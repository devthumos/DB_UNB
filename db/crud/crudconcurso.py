from db.crud.crudbase import *
import mysql.connector
from mysql.connector import Error
import streamlit as st

# Classe CRUD para a Entidade Concurso
class CRUDConcurso(CRUDBase):
    def create(self, data):
        try:
            cursor = self.connection.cursor()
            query = "INSERT INTO Concurso (idConcurso, idCargo, Nome_Concurso, Data_Concurso, Orgao_Realizador) VALUES (%s, %s, %s, %s, %s)"
            cursor.execute(query, data)
            self.connection.commit()
            st.success("Concurso criado com sucesso!")
        except Error as e:
            st.error(f"Erro ao criar concurso: {e}")

    def read(self, filters):
        try:
            cursor = self.connection.cursor()
            if not "".join(list(filters.values())):
                query = "SELECT * FROM Concurso"
            else:
                query = "SELECT * FROM Concurso WHERE " + " AND ".join(f"{k}=%s" for k in filters if filters[k]) if filters else "1=1"
            cursor.execute(query, tuple(filters[k] for k in filters if filters[k]))
            rows = cursor.fetchall()
            return rows
        except Error as e:
            st.error(f"Erro ao ler concursos: {e}")
            return []

    def update(self, data):
        try:
            cursor = self.connection.cursor()
            query = "UPDATE Concurso SET idConcurso=%s, idCargo=%s, Nome_Concurso=%s, Data_Concurso=%s, Orgao_Realizador=%s WHERE idConcurso=%s"
            cursor.execute(query, data)
            self.connection.commit()
            st.success("Concurso atualizado com sucesso!")
        except Error as e:
            st.error(f"Erro ao atualizar concurso: {e}")

    def delete(self, record_id):
        try:
            cursor = self.connection.cursor()
            query = "DELETE FROM Concurso WHERE idConcurso=%s"
            cursor.execute(query, (record_id,))
            self.connection.commit()
            st.success("Concurso deletado com sucesso!")
        except Error as e:
            st.error(f"Erro ao deletar concurso: {e}")