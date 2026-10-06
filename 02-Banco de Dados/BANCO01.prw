#include 'protheus.ch'
#include 'parmtype.ch'

    // A -> FAZ REFERÊNCIA A ALGUMA COISA, ENTÃO SB1 TÁ FAZENDO REFERÊNCIA A ALGO. 
    // O GetArea PEGA A ÁREA DE REFERÊNCIA, ENTÃO NESSE CASO ELE PEGA A SB1
    // O  DbSelectArea ELE ABRE A TABELA, QUE NESSE CASO É A SB1
    // O DbSetOrder, LOCALIZA UM ÍNDICE 
    // TODO ÍNDICE NO PROTHEUS ELE COMEÇA COM A FILIAL
    // O DbGoTop ELE VARRE A TABELA 
    // O DbSeek VARRE A TABELA 
    // O FWXFilial É A FILIAL ATUAL (QUE ESTIVER LOGADO NO SISTEMA)
    // O RestArea ESTÁ FECHANDO A TABELA 
USER FUNCTION BANCO01()

    Local aArea := SB1->(GetArea())

    DbSelectArea("SB1")
    SB1->(DbSetOrder(1)) //TA ABRINDO O ÍNDICE 1 
    SB1->(DbGoTop())

    if SB1->(dbSeek(FWXFilial("SB1") + "000002")) //ELE VARRE E PROCURA O CÓDIGO 000002
        Alert(SB1-> B1_DESC) //MOSTRANDO A DESCRIÇÃO (NOME DO PRODUTO) DESSE CÓDIGO 000002
    endif

    RestArea(aArea)
Return
