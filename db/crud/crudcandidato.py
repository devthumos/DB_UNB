from db.crud.crudbase import *
import mysql.connector
from mysql.connector import Error
import streamlit as st
from PIL import Image
import io

# Classe CRUD para a Entidade Candidato
class CRUDCandidato(CRUDBase):
    def create(self, data, foto_candidato):
        try:
            cursor = self.connection.cursor()
            foto_binaria = foto_candidato.read() if foto_candidato else None
            query = """
            INSERT INTO Candidato (
                CPF_Candidato, Nome_Candidato, Telefone, Email, Data_Nascimento, Sexo, 
                CEP_Candidato, UF, Cidade, Bairro, Rua, 
                Complemento, Numero, Estado_Civil, Foto_Candidato
            ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            """
            cursor.execute(query, data + (foto_binaria,))
            self.connection.commit()
            st.success("Candidato criado com sucesso!")
        except Error as e:
            st.error(f"Erro ao criar candidato: {e}")

    def read(self, filters):
        try:
            cursor = self.connection.cursor()
            if not "".join(list(filters.values())):
                query = "SELECT * FROM Candidato"
            else:

                query = "SELECT * FROM Candidato WHERE " + " AND ".join(f"{k} LIKE %s" for k in filters if filters[k]) if filters else "1=1"
            cursor.execute(query, tuple(f"%{filters[k]}%" for k in filters if filters[k]))
            rows = cursor.fetchall()
            return rows
        except Error as e:
            st.error(f"Erro ao ler candidatos: {e}")
            return []

    def update(self, data, foto_candidato):
        try:
            cursor = self.connection.cursor()
            foto_binaria = foto_candidato.read() if foto_candidato else None
            query = """
            UPDATE Candidato SET
                Nome_Candidato=%s, Telefone=%s, Email=%s, Data_Nascimento=%s, Sexo=%s,
                CEP_Candidato=%s, UF=%s, Cidade=%s, Bairro=%s, Rua=%s,
                Complemento=%s, Numero=%s, Estado_Civil=%s, Foto_Candidato=%s
            WHERE CPF_Candidato = %s
            """
            ## AQUI NAO TA CERTO A ORDEM, TINHA QUE SER DATA[1 E EM DIANTE]
            # print(data[1:])
            cursor.execute(query, data[1:] + (foto_binaria, data[0]))
            self.connection.commit()
            st.success("Candidato atualizado com sucesso!")
        except Error as e:
            st.error(f"Erro ao atualizar candidato: {e}")

    def delete(self, cpf_candidato):
        try:
            cursor = self.connection.cursor()
            query = "DELETE FROM Candidato WHERE CPF_Candidato=%s"
            cursor.execute(query, (cpf_candidato,))
            self.connection.commit()
            st.success("Candidato deletado com sucesso!")
        except Error as e:
            st.error(f"Erro ao deletar candidato: {e}")

def render_image_from_blob(blob_data):
    image = Image.open(io.BytesIO(blob_data))  # Converte o binário da foto para imagem
    return image