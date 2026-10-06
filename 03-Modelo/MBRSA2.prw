#include 'protheus.ch'
#include 'parmtype.ch'

USER FUNCTION MBRSA2()
    
    Local cAlias := "SA2"
    Local aCores := {}
    Local cFiltra := "A2_FILIAL == '" + xFilial('SA2') + "' .AND. A2_EST == 'SP' "
    Private cCadastro := "Cadastro MBROWSE"
    Private aRotina := {}
    Private aIndexSA2 := {} 
    Private bFiltraBrw := {|| FilBrowse(cAlias, @aIndexSA2, @cFiltra)} //FILBROWSE

    AAdd(aRotina, {"Pesquisar", "AxPesqui", 0, 1})
    AAdd(aRotina, {"Visualizar", "AxVisual", 0, 2})
    AAdd(aRotina, {"Incluir", "U_BInclui", 0, 3})
    AAdd(aRotina, {"Alterar", "U_BAltera", 0, 4})
    AAdd(aRotina, {"Excluir", "U_BDeleta", 0, 5})
    AAdd(aRotina, {"Legenda", "U_BLegenda", 0, 6})

    // ACores - Legenda 
    // O A2_TIPO É ONDE QUEREMOS QUE FIQUE A BOLINHA COM A COR

    // ENTÃO NESSE PRIMEIRO CASO SE FOR F (PESSOA FÍSICA) A COR VAI SER VERDE 
    AAdd(aCores, {"A2_TIPO == 'F' " , "BR_VERDE "})
    // SE FOR PESSOA JURÍDICA É AMARELO
    AAdd(aCores, {"A2_TIPO == 'J' " , "BR_AMARELO "})
    // SE FOR EXPORTAÇÃO VAI SER LARANJA 
    AAdd(aCores, {"A2_TIPO == 'X' " , "BR_LARANJA "})
    // SE FOR FORNECEDOR RURAL VAI SER MARROM 
    AAdd(aCores, {"A2_TIPO == 'R' " , "BR_MARROM "})
    // SE NÃO FOR CLASSIFICADO VAI SER PRETO
    AAdd(aCores, {"Empty(A2_TIPO)" , "BR_PRETO "})

    dbSelectArea(cAlias)
    dbSetOrder(1)

    Eval(bFiltraBrw)

    dbGoTop()
    mBrowse(6,1,22,75,cAlias,,,,,, aCores)

    EndFilBrw(cAlias, aIndexSA2)

Return

// FUNÇÃO BInclui - Inclusão
USER FUNCTION BInclui(cAlias, nReg, nOpc)
    
    Local nOpcao := 0 
    nOpcao := AxInclui(cAlias, nReg, nOpc)

        if nOpcao == 1
            MsgInfo("Inclusão efetuada com sucesso")
        else
            MsgAlert("Inclusão cancelada")
        endif
Return  

// FUNÇÃO BAltera - Alteração 
USER FUNCTION BAltera(cAlias, nReg, nOpc)
    
    Local nOpcao := 0 
    nOpcao := AxAltera(cAlias, nReg, nOpc)

        if nOpcao == 1
            MsgInfo("Alteração efetuada com sucesso")
        else
            MsgAlert("Alteração cancelada")
        endif
Return Nil

// FUNÇÃO BDeleta - Exclusão
USER FUNCTION BDeleta(cAlias, nReg, nOpc)
    
    Local nOpcao := 0 
    nOpcao := AxDeleta(cAlias, nReg, nOpc)

        if nOpcao == 1
            MsgInfo("Exclusão efetuada com sucesso")
        else
            MsgAlert("Exclusão cancelada")
        endif
Return Nil

// FUNÇÃO BLegenda - Legenda
USER FUNCTION BLegenda()

    Local aLegenda := {}

    // ENTÃO AQUI COLOCAMOS A COR ESPECÍFICA E O QUE ELA SIGNIFICA, E ISSO QUE VAI APARECER AO USUÁRIO
    AAdd(aLegenda, {"BR_VERDE", "Pessoa Física"})
    AAdd(aLegenda, {"BR_AMARELO", "Pessoa Jurídica"})
    AAdd(aLegenda, {"BR_LARANJA", "Exportação"})
    AAdd(aLegenda, {"BR_MARROM", "Fornecedor Rural"})
    AAdd(aLegenda, {"BR_PRETO", "Não Classificado"})

    BrwLegenda(cCadastro, "Legenda", aLegenda)

Return
