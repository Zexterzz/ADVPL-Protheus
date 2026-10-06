#include 'protheus.ch'
#include 'parmtype.ch'

USER FUNCTION BANCO02()
    Local aArea := SB1->(GetArea())
    Local cMsg := ""

    DbSelectArea("SB1")
    SB1->(DbSetOrder(1))
    SB1->(DbGoTop())

// AQUI POSICIONEI NA SB1, ÍNDICE 1, DEPOIS FILIAL E O CÓDIGO EM QUE ESTAMOS PESQUISANDO, E POR FIM COLOCAMOS O CAMPO QUE QUEREMOS VER 
    cMsg := Posicione('SB1', 1, FWXFilial('SB1') + '000002', 'B1_DESC')
    Alert("Descrição Produto: " + cMsg)

    RestArea(aArea)
Return
