import streamlit as st
from db.config.db_banca_provas import *
from db.crud.crudconcurso import *
from datetime import datetime
from unidecode import unidecode
import re
import pandas as pd

def entidade_concurso_page():
    st.title("CRUD - Concurso")
    connection = create_connection()
    crud = CRUDConcurso(connection)

    if st.button("Limpar Campos"):
        st.session_state["concurso_concurso"] = ""
        st.session_state["cargo_concurso"] = ""
        st.session_state["nome_concurso"] = ""
        st.session_state["data_concurso"] = datetime.now()
        st.session_state["orgao_concurso"] = ""

    menu = ["Create", "Read", "Update", "Delete"]
    choice = st.selectbox("Menu", menu)

    id_concurso = st.text_input("ID do Concurso", key="concurso_concurso")
    id_cargo = st.text_input("ID do Cargo", key="cargo_concurso") if choice != "Delete" else ""
    nome_concurso = re.sub(r"[\s]+", " ", unidecode(st.text_input("Nome do Concurso", key="nome_concurso").lower())) if choice != "Delete" else ""
    com_data = st.checkbox("Leitura Com Data") if choice == "Read" else True
    data_concurso = st.date_input("Data do Concurso", key="data_concurso", min_value=datetime.strptime('01/01/1930', '%d/%m/%Y'), max_value=datetime.now()).strftime('%Y-%m-%d') if choice != "Delete" and com_data else ""
    orgao_realizador = re.sub(r"[\s]+", " ", unidecode(st.text_input("Órgão Realizador", key="orgao_concurso").lower())) if choice != "Delete" else ""
    data = (id_concurso, id_cargo, nome_concurso, data_concurso, orgao_realizador) if choice != "Delete" else ""

    if choice == "Create":
        if st.button("Criar"):
            crud.create(data)

    elif choice == "Read":
        filters = {
                "idConcurso": id_concurso,
                "idCargo": id_cargo,
                "Nome_Concurso": nome_concurso,
                "Data_Concurso": data_concurso,
                "Orgao_Realizador": orgao_realizador
            }
        
        if st.button('Read'):
            
            records = crud.read(filters)
            if records:
                df = pd.DataFrame(records, columns=[
                            "idConcurso", "idCargo", "Nome_Concurso", "Data_Concurso", 
                            "Orgao_Realizador"
                        ])
                
                st.dataframe(df)
            else:
                pass ## Falar pro usuário que não tem ninguem
            # for row in records:
            #     st.write(row)

    elif choice == "Update":
        update_data = (id_concurso, id_cargo, nome_concurso, data_concurso, orgao_realizador)
        if st.button("Atualizar"):
            crud.update(update_data)

    elif choice == "Delete":
        if st.button("Deletar"):
            crud.delete(id_concurso)

    close_connection(connection)