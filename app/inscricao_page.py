import streamlit as st
from db.config.db_banca_provas import *
from db.crud.crudinscricao import *
from datetime import datetime
from unidecode import unidecode
import re
import pandas as pd

# Funções para cada página do CRUD
def entidade_inscricao_page():
    st.title("CRUD - Inscrição")
    connection = create_connection()
    crud = CRUDInscricao(connection)

    if st.button("Limpar Campos"):
        st.session_state["cpf_inscricao"] = ""
        st.session_state["concurso_inscricao"] = ""
        st.session_state["cargo_inscricao"] = ""
        st.session_state["data_inscricao"] = datetime.now()
        st.session_state["cota_inscricao"] = ""

    menu = ["Create", "Read", "Update", "Delete"]
    choice = st.selectbox("Menu", menu)

    cpf_candidato = st.text_input("CPF do Candidato", key="cpf_inscricao")
    id_concurso = st.text_input("ID do Concurso", key="concurso_inscricao")
    id_cargo = st.text_input("ID do Cargo", key="cargo_inscricao")
    com_data = st.checkbox("Leitura Com Data") if choice == "Read" else True
    data_inscricao = st.date_input("Data de Inscrição", key="data_inscricao", min_value=datetime.strptime('01/01/1930', '%d/%m/%Y'), max_value=datetime.now()).strftime('%Y-%m-%d') if com_data else ""
    cota = st.selectbox("Cota", ["", "Ampla concorrência", "Negros", "Deficientes fisicos"], key="cota_inscricao") if choice != "Delete" else ""

    data = (cpf_candidato, id_concurso, id_cargo, data_inscricao, cota)

    if choice == "Create":
        if st.button("Criar"):
            crud.create(data)

    elif choice == "Read":
        filters = {
                "CPF_Candidato": cpf_candidato,
                "idConcurso": id_concurso,
                "idCargo": id_cargo,
                "Data_Inscricao": data_inscricao,
                "Cota": cota,
            }
    
        if st.button("Read"):

            records = crud.read(filters)
            if records:
                print(records)
                df = pd.DataFrame(records, columns=[
                            "CPF_Candidato", "idConcurso", "idCargo", "Data_Inscricao", 
                            "Cota"
                        ])
                
                st.dataframe(df)
            else:
                pass ## Falar pro usuário que não tem ninguem
                # for row in records:
                #     st.write(row)
            # for row in records:
            #     st.write(row)



    elif choice == "Update":
        update_data = (cpf_candidato, id_concurso, id_cargo, data_inscricao)
        if st.button("Atualizar"):
            crud.update(update_data)

    elif choice == "Delete":
        record_id = (cpf_candidato, id_concurso, id_cargo, data_inscricao)
        if st.button("Deletar"):
            crud.delete(record_id)

    close_connection(connection)