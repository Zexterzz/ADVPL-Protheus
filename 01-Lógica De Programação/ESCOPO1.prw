#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

    Static cStatic :=''

user function ESCOPO1()

//VARI�VEIS LOCAIS 
    Local nVar0 := 1 
    Local nVar1 := 20 

//VARI�VEIS PRIVATE  
     cPri := 'Private!'

//VARIÝVEL PUBLIC 
    Public __cPublic := 'Variável de escopo Public!' //POR QUESTÕES DE BOAS PRÝTICAS DE PROGRAMAÇÃO, ANTES DE NOMEAR QUALQUER VARIÝVEL PUBLIC, SE COLOCA O __

    TestEscop(nVar0, nVar1) //CHAMANDO A FUNÇÃO STATIC 

Return
//------------------------- FUN��O STATIC ---------------------------------------
Static function TestEscop(nValor1, nValor2)

    Local __cPublic := 'Alterei' //POR QUESTÕES DE BOAS PRÝTICAS DE PROGRAMAÇÃO, ANTES DE NOMEAR QUALQUER VARIÝVEL PUBLIC, SE COLOCA O __
    Default nValor1 := 0

//ALTERANDO CONTEÚDO DA VARIÝVEL 
    nValor2 := 10 //ESSE nValor2 ele seria o nVar1 da primeira função, só que com o valor alterado 

//MOSTRAR CONTEÚDO DA VARIÝVEL PRIVATE 
    Alert(" Private : " + cPri)

// ALTERANDO VALOR DA VARIÝVEL PUBLIC 
    Alert("Public : " + __cPublic)

    MsgAlert(nValor2) 
    Alert("Variavel Static : " + cStatic)

Return
