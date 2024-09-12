import streamlit as st
from db.proceadures.run import *

# Função para executar as procedures de alta complexidade
def procedures_alta_complexidade_page():
    st.title("Procedures de Alta Complexidade")
    if st.button("Limpar Campos"):
        st.session_state["_1_alta"] = 1
        st.session_state["_2_alta"] = 1
        st.session_state["_3_alta"] = 1

    option = st.selectbox("Selecione a Procedure", [
        "Relatório de Desempenho dos Candidatos em um Concurso",
        "Relatório de Aprovações por Cota",
        "Relatório de Distribuição de Candidatos por Faixa de Notas"
    ])


    if option == "Relatório de Desempenho dos Candidatos em um Concurso":
        id_concurso = st.number_input("ID do Concurso", min_value=1, key="_1_alta")
        if st.button("Executar"):
            run_procedure("GerarRelatorioDesempenhoConcurso", [id_concurso])

    elif option == "Relatório de Aprovações por Cota":
        id_concurso = st.number_input("ID do Concurso", min_value=1, key="_2_alta")
        if st.button("Executar"):
            run_procedure("RelatorioAprovacoesPorCota", [id_concurso])

    elif option == "Relatório de Distribuição de Candidatos por Faixa de Notas":
        id_concurso = st.number_input("ID do Concurso", min_value=1, key="_3_alta")
        if st.button("Executar"):
            run_procedure("RelatorioDistribuicaoPorFaixaDeNotas", [id_concurso])