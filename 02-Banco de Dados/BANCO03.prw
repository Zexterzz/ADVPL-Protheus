#include 'protheus.ch'
#include 'parmtype.ch'
#include 'TopConn.ch'

// O AS EM SQL CRIA UM APELIDO PARA ALGO
// EoF significa final de arquivo
USER FUNCTION BANCO03()

    Local aArea := SB1->(GetArea())
    Local cQuery := ""
    Local aDados := {}
    Local nCount := 0

    cQuery := "SELECT "
    // RETORNANDO O CODIGO
    cQuery += "B1_COD AS CODIGO, "

    // RETORNANDO A DESCRIÇÃO
    cQuery += "B1_DESC AS DESCRICAO "

    cQuery += "FROM "
    cQuery += RetSQLName("SB1") + " SB1 "

    // O WHERE FILTRA LINHAS DA TABELA
    cQuery += "WHERE "
    
    // RETORNANDO TODOS MENOS OS BLOQUEADOS
    cQuery += "B1_MSBLQL != '1'"

    // EXECUTANDO A CONSULTA
    TCQuery cQuery New Alias "TMP"

    While !TMP->(EoF())

        // ADICIONANDO NO VETOR O CODIGO E A DESCRICAO
        AADD(aDados, TMP->CODIGO)
        AADD(aDados, TMP->DESCRICAO)

        TMP->(DbSkip())

    EndDo

    Alert(Len(aDados))

    For nCount := 1 To Len(aDados)

        MsgInfo(aDados[nCount])

    Next nCount

    // FECHA A TABELA TEMPORÁRIA
    TMP->(DbCloseArea())

    // FECHA A SB1
    RestArea(aArea)

Return
