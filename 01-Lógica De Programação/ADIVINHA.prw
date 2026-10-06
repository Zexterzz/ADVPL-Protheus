#INCLUDE 'protheus.ch'

    // O FWInputBox CRIA UMA JANELA COM UMA CAIXA DE TEXTO PARA DIGITAR UM VALOR
     // ESSE RANDOMIZE ESCOLHE UM NÚMERO ALEATÓRIO DE 1 A 100 
    
USER FUNCTION ADIVINHA()

    Local nNumero := Randomize(1,100)
    Local nChute := 0
    Local nTent := 0 

    While nChute != nNumero
    nChute := Val(FWInputBox("Escolha um número [ 1 - 100 ]", ""))
        if nChute == nNumero
            MsgInfo("Parbéns! Você acertou o número, que era : " + cValToChar(nChute) + "<br> ERROS: " + cValToChar(nTent),"Fim de Jogo!")

        elseif nChute > nNumero 
            msgAlert("O valor digitado é muito alto", "Tente Novamente =(")
            nTent++ 
        else
            msgAlert("Valor baixo", "Tente Novamente =(")
            nTent++ 
        endif
    EndDo
    
return
