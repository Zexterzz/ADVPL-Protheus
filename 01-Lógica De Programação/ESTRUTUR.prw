#include 'protheus.ch'
#include 'parmtype.ch'

USER Function ESTRUTUR()
    Local nNum1 := 22
    Local nNum2 := 100

    if(nNum1 = nNum2 )
        msgInfo("A variável nNum1 é igual a nNum2")
   
    elseif (nNum1 > nNum2)
        msgAlert("A variável nNum1 é maior")

    elseif (nNum1 != nNum2 )
        Alert ("A variável nNum1 é diferente de nNum2")        
    
    EndIf

Return 
