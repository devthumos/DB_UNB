from db.crud.crudbase import *
import mysql.connector
from mysql.connector import Error
import streamlit as st

# Classe CRUD para a Entidade Inscrição
class CRUDInscricao(CRUDBase):
    def create(self, data):
        try:
            cursor = self.connection.cursor()
            query = "INSERT INTO Inscricao (CPF_Candidato, idConcurso, idCargo, Data_Inscricao, Cota) VALUES (%s, %s, %s, %s, %s)"
            cursor.execute(query, data)
            self.connection.commit()
            st.success("Inscrição criada com sucesso!")
        except Error as e:
            st.error(f"Erro ao criar inscrição: {e}")

    def read(self, filters):
        try:
            cursor = self.connection.cursor()
            if not "".join(list(filters.values())):
                query = "SELECT * FROM Inscricao"
            else:
                query = "SELECT * FROM Inscricao WHERE " + " AND ".join(f"{k}=%s" for k in filters if filters[k]) if filters else "1=1"
            cursor.execute(query, tuple(filters[k] for k in filters if filters[k]))
            rows = cursor.fetchall()
            return rows
        except Error as e:
            st.error(f"Erro ao ler inscrições: {e}")
            return []

    def update(self, data):
        try:
            cursor = self.connection.cursor()
            query = "UPDATE Inscricao SET CPF_Candidato=%s, idConcurso=%s, idCargo=%s, Data_Inscricao=%s, Cota=%s WHERE idInscricao=%s"
            cursor.execute(query, data)
            self.connection.commit()
            st.success("Inscrição atualizada com sucesso!")
        except Error as e:
            st.error(f"Erro ao atualizar inscrição: {e}")

    def delete(self, record_id: tuple):
        try:
            cursor = self.connection.cursor()
            query = "DELETE FROM Inscricao WHERE CPF_Candidato=%s and idConcurso=%s and idCargo=%s and Data_Inscricao=%s and Cota=%s"
            cursor.execute(query, record_id)
            self.connection.commit()
            st.success("Inscrição deletada com sucesso!")
        except Error as e:
            st.error(f"Erro ao deletar inscrição: {e}")