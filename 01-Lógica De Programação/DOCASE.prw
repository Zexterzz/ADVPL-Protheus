#include 'protheus.ch'
#include 'parmtype.ch'

USER FUNCTION DoCase()

    Local cData := "10/12/2026"

    Do Case 

    Case cData == "20/12/2026" 
    Alert("Não é Natal!" + cData)

    Case cData == "25/12/2026"
    Alert("Caraca, ja e Natal!")

    OtherWise
    MsgAlert("Calma, ainda não está próximo ou já passou o natal" +  cData)
    EndCase

return
