from db.config.db_banca_provas import *
import pandas as pd
import streamlit as st

# Função genérica para chamar e exibir resultados de procedures
def run_procedure(procedure_name, params=None):
    connection = create_connection()
    if connection:
        try:
            cursor = connection.cursor()
            if params:
                print(params)
                cursor.callproc(procedure_name, params)
            else:
                cursor.callproc(procedure_name)
            
            for result in cursor.stored_results():
                data = result.fetchall()
                print(data)
                columns = result.column_names
                df = pd.DataFrame(data, columns=columns)
                st.dataframe(df)

        except Error as e:
            st.error(f"Erro ao executar a procedure {procedure_name}: {e}")
        finally:
            close_connection(connection)