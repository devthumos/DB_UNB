import streamlit as st
from db.proceadures.run import *

# Função para executar as procedures de baixa complexidade
def procedures_baixa_complexidade_page():
    st.title("Procedures de Baixa Complexidade")

    if st.button("Limpar Campos"):
        st.session_state["_1_cnpj_baixa"] = ""
        st.session_state["_1_cep_baixa"] = ""
        st.session_state["_1_idconc_baixa"] = 1
        st.session_state["_2_idconc_baixa"] = 1
        st.session_state["_3_cpf_baixa"] = ""
        st.session_state["_4_idconc_baixa"] = 1
        st.session_state["_5_idconc_baixa"] = 1

    option = st.selectbox("Selecione a Procedure", [
        "Contar Fiscais por Aplicação",
        "Listar Fiscais por Concurso",
        "Contar Aplicações de um Fiscal",
        "Contar Inscrições por Concurso",
        "Contar Candidatos por Cota"
    ])

    if option == "Contar Fiscais por Aplicação":
        cnpj = st.text_input("CNPJ da Instituição", key="_1_cnpj_baixa")
        cep = st.text_input("CEP da Instituição", key="_1_cep_baixa")
        id_concurso = st.number_input("ID do Concurso", min_value=1, key="_1_idconc_baixa")
        if st.button("Executar"):
            run_procedure("ContarFiscaisPorAplicacao", [cnpj, cep, id_concurso])

    elif option == "Listar Fiscais por Concurso":
        id_concurso = st.number_input("ID do Concurso", min_value=1, key="_2_idconc_baixa")
        if st.button("Executar"):
            run_procedure("ListarFiscaisPorConcurso", [id_concurso])

    elif option == "Contar Aplicações de um Fiscal":
        cpf_fiscal = st.text_input("CPF do Fiscal", key="_3_cpf_baixa")
        if st.button("Executar"):
            run_procedure("ContarAplicacoesFiscal", [cpf_fiscal])

    elif option == "Contar Inscrições por Concurso":
        id_concurso = st.number_input("ID do Concurso", min_value=1, key="_4_idconc_baixa")
        if st.button("Executar"):
            run_procedure("ContarInscricoesPorConcurso", [id_concurso])

    elif option == "Contar Candidatos por Cota":
        id_concurso = st.number_input("ID do Concurso", min_value=1, key="_5_idconc_baixa")
        if st.button("Executar"):
            run_procedure("ContarCandidatosPorCota", [id_concurso])