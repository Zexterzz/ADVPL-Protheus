#INCLUDE 'protheus.ch' 
#INCLUDE 'parmtype.ch'

User Function OPERADOR()

    Local nNum1 := 10 
    Local nNum2 := 20 

    /*
    OPERADORES MATEMÁTICOS 
    Alert(nNum1 + nNum2) //O + FAZ A SOMA
    Alert(nNum2 - nNum1) // O - FAZ A SUBTRAÇÃO
    Alert(nNum1 * nNum2 ) // O * FAZ A MULTIPLICAÇÃO
    Alert(nNum2 / nNum1) // A / FAZ A DIVISÃO
    Alert(nNum1 % nNum2) // A % MOSTRA O RESTO DA DIVISÃO 
    */

    /*OPERADORES RELACIONAIS E DE ATRIBUIÇÃO 
    Alert(nNum1 < nNum2) // COMPARAÇÃO MENOR (N2 É MAIOR QUE N1 (TRUE .T.))
    Alert(nNum1 > nNum2) // COMPARAÇÃO MAIOR (N2 É MAIOR QUE N1 (FALSE .F.))
    Alert(nNum1 = nNum2) // COMPARAÇÃO DE IGUAL (N1 É IGUAL AO N2 (FALSE .F.))
    Alert(nNum1 == nNum2) // COMPARAÇÃO EXATAMENTE IGUAL (USADO PARA COMPARAR CARACTERES(FALSE .F.))
    Alert(nNum1 <= nNum2) // COMPARAÇÃO MENOR OU IGUAL (N2 É MAIOR OU IGUAL A N1 (TRUE .T.))
    Alert(nNum1 >= nNum2) // COMPARAÇÃO MAIOR OU IGUAL (N1 É MAIOR OU IGUAL A N2 (FALSE .F.))
    Alert(nNum1 != nNum2 ) // COMPARAÇÃO DE DIFERENÇA (N1 É DIFERENTE DE N2 (TRUE .T.))
    */ 

    //OPERADORES DE ATRIBUIÇÃO
    nNum1 :=10 // ATRIBUIÇÃO SIMPLES (N1 = 10)
    nNum1 += nNum2 // nNum1 = nNum1 + nNum2 (N1 = 30)
    nNum2 -= nNum1 // nNum2 = nNum2 - nNum1 (N2 = 10)
    nNum1 *= nNum2 // nNum1 = nNum1 * nNum2 (N1 = 200)
    nNum2 /= nNum1 // nNum2 = nNum2/nNum1 (N2 = 2)

Return 
