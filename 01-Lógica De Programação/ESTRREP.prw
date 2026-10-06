#include 'protheus.ch'
#include 'parmtype.ch'

USER FUNCTION ESTRREP()
    /*
    Local nCont 
    Local nNum := 0 

    for nCont := 0 to 10 Step 2

    // CADA VEZ QUE O FOR PASSAR AQUI ELE VAI FAZER O 0 + 1,2,3,4,5,6,7,8,9,10 (nNum = nNum + nCont) nesse caso o nCont é quem aumenta
    nNum += nCont
        
    next
    Alert("Valor : " + cValToChar(nNum))
    */ 

// EXEMPLO DO COMANDO WHILE 
    Local nNum1 := 0 
    Local nNum2 := 10 
    Public nTotal := 0

    //ELE SÓ VAI FICAR NESSE LOOP SE O nNum1 for menor que nNum2, se os dois valores forem iguais, ele para
    While nNum1 < nNum2
    //O ++ INCREMENTA 1 A CADA VEZ QUE PASSA POR ESSE WHILE
        nNum1++ 
    EndDo

    nTotal := nNum1 + nNum2
    Alert(cValToChar(nTotal))

    if nTotal == 20
        MsgAlert("Parabéns, deu certo")
    else
        MsgAlert("Vish, muda o valor")
    endif
return
