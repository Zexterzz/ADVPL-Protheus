#include 'protheus.ch'
#include 'parmtype.ch'

USER FUNCTION AVETOR()

    Local dData := Date()
    // TRES TIPOS DE DADOS DESTINTOS DENTRO DO ARRAY (STRING, DATE, NUMERAL)
    Local aValores := {"João", dData, 100}

    // NESSE CASO ESTÁ EXIBINDO A POSIÇÃO 2 DO ARRAY QUE É O dData
    Alert(aValores[2])

    // NESSE CASO ESTÁ EXIBINDO A POSIÇÃO 3 DO ARRAY QUE É O INTEIRO 
    Alert(aValores[3])

Return 
