import streamlit as st
from db.config.db_banca_provas import *
from db.crud.crudcandidato import *
from datetime import datetime
from PIL import Image
from unidecode import unidecode
import re
import io
import pandas as pd

# Interface do Streamlit para a Entidade Candidato
def entidade_candidato_page():
    st.title("CRUD - Candidato")
    connection = create_connection()
    crud = CRUDCandidato(connection)

    if st.button("Limpar Campos"):
        st.session_state["cpf_candidato"] = ""
        st.session_state["nome_candidato"] = ""
        st.session_state["data_nascimento"] = datetime.now()
        st.session_state["telefone_candidato"] = ""
        st.session_state["email_candidato"] = ""
        st.session_state["sexo_candidato"] = ""
        st.session_state["cep_candidato"] = ""
        st.session_state["uf_candidato"] = ""
        st.session_state["cidade_candidato"] = ""
        st.session_state["bairro_candidato"] = ""
        st.session_state["rua_candidato"] = ""
        st.session_state["complemento_candidato"] = ""
        st.session_state["numero_candidato"] = ""
        st.session_state["estado_civil_candidato"] = ""
        st.session_state["com_foto_candidato"] = False
        # st.session_state["foto_candidato"] = ""


    menu = ["Create", "Read", "Update", "Delete"]
    choice = st.selectbox("Menu", menu)

    cpf_candidato = st.text_input("CPF do Candidato", key="cpf_candidato")
    nome_candidato = re.sub(r"[\s]+", " ", unidecode(st.text_input("Nome do Candidato", key="nome_candidato").lower().strip())) if choice != "Delete" else ""
    com_data = st.checkbox("Leitura Com Data") if choice == "Read" else True
    data_nascimento = st.date_input("Data de Nascimento", key="data_nascimento", min_value=datetime.strptime('01/01/1930', '%d/%m/%Y'), max_value=datetime.now()).strftime('%Y-%m-%d') if choice != "Delete" and com_data else ""
    telefone = re.sub(r"[\s]+", " ", unidecode(st.text_input("Telefone", key="telefone_candidato").lower().strip())) if choice != "Delete" else ""
    email = re.sub(r"[\s]+", " ", unidecode(st.text_input("Email", key="email_candidato").lower().strip())) if choice != "Delete" else ""
    sexo = st.selectbox("Sexo", ["", "Masculino", "Feminino", "Outro"], key="sexo_candidato") if choice != "Delete" else ""
    foto_candidato = st.file_uploader("Foto do Candidato (PNG)", type=["png"], key="foto_candidato") if choice not in ["Read", "Delete"] else ""
    cep_candidato = st.text_input("CEP do Candidato", key="cep_candidato") if choice != "Delete" else ""
    uf = st.selectbox("UF", ["", "AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "PI", "RR", "RO", "RJ", "RN", "RS", "SC", "SP", "SE", "TO"], key="uf_candidato") if choice != "Delete" else ""
    cidade = re.sub(r"[\s]+", " ", unidecode(st.text_input("Cidade", key="cidade_candidato").lower().strip())) if choice != "Delete" else ""
    bairro = re.sub(r"[\s]+", " ", unidecode(st.text_input("Bairro", key="bairro_candidato").lower().strip())) if choice != "Delete" else ""
    rua = re.sub(r"[\s]+", " ", unidecode(st.text_input("Rua", key="rua_candidato").lower().strip())) if choice != "Delete" else ""
    complemento = re.sub(r"[\s]+", " ", unidecode(st.text_input("Complemento", key="complemento_candidato").lower().strip())) if choice != "Delete" else ""
    numero = st.text_input("Número", key="numero_candidato") if choice != "Delete" else ""
    estado_civil = st.selectbox("Estado Civil", ["", "Solteiro", "Casado", "Divorciado", "Viúvo"], key="estado_civil_candidato") if choice != "Delete" else ""
    retorno_com_foto = st.checkbox("Retorno com Foto", key="com_foto_candidato") if choice == "Read" else True

    data = (
        cpf_candidato, nome_candidato, telefone, email, data_nascimento, sexo, 
        cep_candidato, uf, cidade, bairro, rua, 
        complemento, numero, estado_civil
    )

    if choice == "Create":
        if st.button("Criar") and foto_candidato:
            crud.create(data, foto_candidato)

    elif choice == "Read":
        filters = {
            "CPF_Candidato": cpf_candidato, "Nome_Candidato": nome_candidato, 
            "Telefone": telefone, "Email": email,
            "Data_Nascimento": data_nascimento, "Sexo": sexo,
            "CEP_Candidato": cep_candidato, "UF": uf, "Cidade": cidade,
            "Bairro": bairro, "Rua": rua, "Complemento": complemento,
            "Numero": numero, "Estado_Civil": estado_civil
        }

        if st.button("Read"):
            records = crud.read(filters)

            if records:
            # Criação do DataFrame sem a coluna de foto
                df = pd.DataFrame(records, columns=[
                    "CPF_Candidato", "Nome_Candidato", "Telefone", "Email", 
                    "Data_Nascimento", "Sexo", 
                    "CEP_Candidato", "UF", "Cidade", "Bairro", 
                    "Rua", "Complemento", "Numero", "Estado_Civil",
                    "Foto_Candidato"
                ])
                

                if retorno_com_foto:
                    # Exibe as imagens das fotos
                    for idx, row in df.iterrows():
                        st.subheader(f"Dados do Candidato - {row['Nome_Candidato']}")
                        st.write(f"CPF: {row['CPF_Candidato']}")
                        st.write(f"Tel: {row['Telefone']}, Email: {row['Email']}")
                        st.write(f"Data de Nascimento: {row['Data_Nascimento']}")
                        st.write(f"Sexo: {row['Sexo']}")
                        st.write(f"Endereço: {row['Rua']}, {row['Numero']}, {row['Bairro']}, {row['Cidade']}, {row['UF']}")
                        st.write(f"CEP: {row['CEP_Candidato']}, Complemento: {row['Complemento']}")
                        st.write(f"Estado Civil: {row['Estado_Civil']}")

                        # Renderiza a foto do candidato
                        st.image(render_image_from_blob(row['Foto_Candidato']), caption=f"Foto do Candidato: {row['Nome_Candidato']}", use_column_width=True)
                else:
                    # Exibe o DataFrame sem a coluna de foto
                    st.dataframe(df.drop(columns=["Foto_Candidato"]))

    elif choice == "Update":
        if st.button("Atualizar") and foto_candidato:
            crud.update(data, foto_candidato)

    elif choice == "Delete":
        if st.button("Deletar"):
            crud.delete(cpf_candidato)

    close_connection(connection)