import streamlit as st
from unidecode import unidecode
import datetime
import re
from datetime import datetime
import pandas as pd

from dotenv import load_dotenv


from db.proceadures.run import *

from app.inscricao_page import *
from app.candidato_page import *
from app.concurso_page  import *

from app.baixa_complexidade_page import *
from app.media_complexidade_page import *
from app.alta_complexidade_page  import *


load_dotenv(override=True)


# Definir as páginas do Streamlit
def main():
    st.sidebar.title("Navegação")
    page = st.sidebar.selectbox("Selecione a Página", [
        "Inscrição", "Concurso", "Candidato", 
        "Procedures de Baixa Complexidade", 
        "Procedures de Média Complexidade", 
        "Procedures de Alta Complexidade"
    ])

    if page == "Inscrição":
        entidade_inscricao_page()
    elif page == "Concurso":
        entidade_concurso_page()
    elif page == "Candidato":
        entidade_candidato_page()
    elif page == "Procedures de Baixa Complexidade":
        procedures_baixa_complexidade_page()
    elif page == "Procedures de Média Complexidade":
        procedures_media_complexidade_page()
    elif page == "Procedures de Alta Complexidade":
        procedures_alta_complexidade_page()

if __name__ == '__main__':
    main()