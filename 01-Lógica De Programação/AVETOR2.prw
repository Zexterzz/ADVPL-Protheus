#include 'protheus.ch'
#include 'parmtype.ch'

USER FUNCTION AVETOR2()
    Local aVetor := {10,20,30}   
    // Local aVetor2 := AClone(aVetor)   
    // Local nCount := 0

    // AQUI ADICIONA O NÚMERO 40 AO ARRAY
    AaDd(aVetor, 40)

    // AQUI CONTA QUANTOS ELEMENTOS TEM AO TOTAL DENTRO DO VETOR (QUE COM O 40 VAI SER 4)
    Alert(Len(aVetor))
    

    /* AQUI VOCE ESTA ESCOLHENDO A POSIÇÃO EM QUE QUER INSERIR DETERMINADO VALOR
    AIns(aVetor,2)

    // ENTÃO AQUI VOCE ESTA ESCOLHENDO O 200 PARA COLOCAR NA POSIÇÃO 2 
    aVetor[2] := 200

    Alert(aVetor[2])
    Alert(Len(aVetor))
    */

    /*CRIANDO UMA VARIÁVEL CLONE DA aVetor
    aVetor2 := AClone(aVetor)
        // ESSE VARIÁVEL nCount SÓ VAI PARAR QUANDO ELA FOR DO TAMANHO DO aVetor2
        for nCount := 1 To Len(aVetor2)
            Alert(aVetor2[nCount])
        Next nCount
    */

    /* Adel(aVetor, 2)

    QUANDO VOCE TENTA VER O VALOR 3, ELE ESTA EM BRANCO PORQUE VIROU NULL, MAS O TAMANHO DO ARRAY CONTINUA O MESMO 
    Alert(aVetor[3])

    Alert(Len(aVetor))
    */
return
