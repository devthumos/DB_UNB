import os
import mysql.connector
from mysql.connector import Error

# Função para conectar ao banco de dados MySQL
def create_connection():
    try:
        connection = mysql.connector.connect(
            host=os.getenv('host'),
            user=os.getenv('user'),
            password=os.getenv('password'),
            database=os.getenv('database')
        )
        if connection.is_connected():
            return connection
    except Error as e:
        st.error(f"Erro ao conectar ao MySQL: {e}")
        return None

# Função para fechar a conexão com o banco de dados
def close_connection(connection):
    if connection.is_connected():
        connection.close()   