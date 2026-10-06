#include 'protheus.ch'
#include 'parmtype.ch'

// CRIAÇÃO DA CLASSE EM ADVPL


Class zPessoa
    
    // ATRIBUTOS
    Data cNome 
    Data nIdade
    Data dNascimento

    // MÉTODO CONSTRUTOR
    Method New() Constructor
    // MÉTODOS
    Method MostrarIdade()
        
EndClass

    // CRIANDO O MÉTODO CONSTRUTOR E MOSTRANDO QUE ELE FAZ REFERÊNCIA A CLASSE zPessoa
    Method New(cNome, dNascimento) Class zPessoa
        ::cNome := cNome
        ::dNascimento := dNascimento
        ::nIdade := fCalculoIdade(dNascimento)
    Return Self

    // CRIANDO O MÉTODO E MOSTRANDO QUE ELE FAZ REFERÊNCIA A CLASSE zPessoa
    Method MostrarIdade() Class zPessoa
        Local cMsg := ""

        // TEM QUE COLOCAR ESSE :: PORQUE A VARIÁVEL cNome E nIdade NÃO ESTÃO NESSE MÉTODO E SIM NA CLASSE 
        cMsg := "A pessoa " +::cNome+ " tem " + cValToChar(::nIdade)+ " anos"
        MsgInfo(cMsg, "INFORMAÇÃO")

    Return

    // FUNÇÃO QUE REALIZA O CÁLCULO DA IDADE 
    Static Function fCalculoIdade(dNascimento)

        Local nIdade
        Local dHoje := Date()

        nIdade := DateDiffYear(dHoje, dNascimento)

    Return nIdade
