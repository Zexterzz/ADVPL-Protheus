#include 'protheus.ch'

User Function zCadPessoa()
    Local oPessoa
    Local cNome := "Luis Otavio"
    Local dNascimento := sTod("20090403")

    // INSTANCIANDO O OBJETO ATRAVÉS DA CLASSE PESSOA
    oPessoa := zPessoa():New(cNome, dNascimento)

    // CHAMANDO O MÉTODO
    oPessoa : MostrarIdade
Return
