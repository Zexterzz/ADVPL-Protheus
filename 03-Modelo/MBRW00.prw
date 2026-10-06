#include 'protheus.ch'
#include 'parmtype.ch'

USER FUNCTION MBRW00()
    Local cAlias := "SB1"
    Private cTitulo := "Cadastro produtos MBROWSE"
    Private aRotina := {}

    // A VARIÁVEL ROTINA VAI RECEBER ESSES PARÂMETROS (TÍTULO DA PARTE DE CIMA, ROTINA QUE SERÁ EXECUTADA QUANDO CLICAR NO TÍTULO, E DO 1 AO 5 QUE SÃO AS OPERAÇÕES )
    AADD(aRotina, {"Pesquisa",   "AxPesqui",   0,   1})
    AADD(aRotina, {"Visualizar", "AxVisual",   0,   2})
    AADD(aRotina, {"Incluir",    "AxInclui",   0,   3})
    AADD(aRotina, {"Trocar",     "AxAltera",   0,   4})
    AADD(aRotina, {"Excluir",    "AxDeleta",   0,   5})
    AADD(aRotina, {"Olá Mundo",  "U_OLAMUNDO", 0,   6})

    dbSelectArea(cAlias)
    dbSetOrder(1)
    mBrowse(,,,, cAlias)

Return Nil
