#INCLUDE 'protheus.ch' 
#INCLUDE 'parmtype.ch'
/*
    TIPOS DE DADOS: 
    C - Caracter: armazenam textos, códigos ou números tratados como texto, pode estar enttre aspas simples ou duplas, ex: "texto" ou 'texto'
    N - Numérico : usados para cálculos e operações matemáticas, apenas números, qualquer real 
    L - Lógico : representam os valores Falsos ou Verdadeiros, usando .T. (true) e .F. (false)
    D - Data : usados para armazenar datas, essa função DATE() que traz para você a data que está no sistema. CTOD() que converte de caractere para data e DTOC() que é de data para caractere 
    A - Array : usados para armazenar coleções de valores, como {"valor1", "valor2", "valor3"}

*/
user function VARIAVEL()

    Local cTexto := "Olá Mundo!" // tem que colocar o c antes do nome da variável para indicar que é do tipo caractere
    Local nNumero := 10 // tem que colocar o n antes do nome da variável para indicar que é do tipo numérico
    Local lLogico := .T. // tem que colocar o l antes do nome da variável para indicar que é do tipo lógico
    Local dData := Date() // tem que colocar o d antes do nome da variável para indicar que é do tipo data, a função DATE() traz a data atual do sistema
    Local aArray := {"João", "Maria", "Pedro"} // tem que colocar o a antes do nome da variável para indicar que é do tipo array
    
    MsgAlert("Texto: " + cTexto) // isso é uma mensagem falando "Texto :" + o que foi colocado na variável cTexto, que é "Olá Mundo!"
    MsgAlert("Número: " + Str(nNumero)) // a função Str() converte o número para string
    MsgAlert("Lógico: " + Iif(lLogico, "Verdadeiro", "Falso")) // a função Iif() é uma função condicional, se lLogico for verdadeiro, vai mostrar "Verdadeiro", se for falso, vai mostrar "Falso"
    MsgAlert("Data: " + DtoC(dData)) // a função DtoC() converte a data para string, para mostrar na mensagem
    MsgAlert("Array: " + aArray[1] + ", " + aArray[2] + ", " + aArray[3]) // para mostrar o array, é necessário colocar o índice do array entre colchetes, começando do 1, então aArray[1] é "valor1", aArray[2] é "valor2" e aArray[3] é "valor3"

    Return
