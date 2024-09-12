import streamlit as st
from db.proceadures.run import *

# Função para executar as procedures de média complexidade
def procedures_media_complexidade_page():
    st.title("Procedures de Média Complexidade")
    if st.button("Limpar Campos"):
        st.session_state["_1_media"] = 1
        st.session_state["_2_media"] = 1
        st.session_state["_3_media"] = 1

    option = st.selectbox("Selecione a Procedure", [
        "Contar Total de Fiscais em Concursos",
        "Listar Concursos com Mais Fiscais",
        "Calcular Média de Notas em um Concurso",
        "Listar Top 10 Candidatos por Nota",
        "Relatório de Inscrições com Status de Aprovação"
    ])

    if option == "Contar Total de Fiscais em Concursos":
        if st.button("Executar"):
            run_procedure("ContarTotalFiscaisEmConcursos")

    elif option == "Listar Concursos com Mais Fiscais":
        if st.button("Executar"):
            run_procedure("ListarConcursosComMaisFiscais")

    elif option == "Calcular Média de Notas em um Concurso":
        id_concurso = st.number_input("ID do Concurso", min_value=1, key="_1_media")
        if st.button("Executar"):
            run_procedure("CalcularMediaNotasConcurso", [id_concurso])

    elif option == "Listar Top 10 Candidatos por Nota":
        id_concurso = st.number_input("ID do Concurso", min_value=1, key="_2_media")
        if st.button("Executar"):
            run_procedure("ListarTop10CandidatosPorNota", [id_concurso])

    elif option == "Relatório de Inscrições com Status de Aprovação":
        id_concurso = st.number_input("ID do Concurso", min_value=1, key="_3_media")
        if st.button("Executar"):
            run_procedure("RelatorioInscricoesComStatusAprovacao", [id_concurso])