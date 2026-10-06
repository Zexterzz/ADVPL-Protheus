#include 'protheus.ch'
#include 'parmtype.ch'

USER FUNCTION MODELO1()
    Local cAlias := "SB1"
    Local cTitulo := "Cadastro - AXCadastro"
    // ESSA VARIÁVEL PERMITE EM QUE O USUÁRIO EXCLUA UM ITEM, POR ESTAR .T.
    Local cVldExc := ".T."
    // ESSA VARIÁVEL PERMITE EM QUE O USUÁRIO ALTERE UM ITEM, POR ESTAR .T.
    Local cVlDalt := ".T."
     
    AXCadastro(cAlias, cTitulo, cVldExc, cVlDalt )
 
Return Nil
