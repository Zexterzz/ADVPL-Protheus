#include 'protheus.ch'
#include 'parmtype.ch'

USER FUNCTION BANCO05()
    Local aArea := GetArea()
    Local aDados := {}
    // SE ELA VIRAR TRUE É PORQUE DEU ALGUM ERRO
    Private lMSErroAuto := .F.

    aDados := {;
                {"B1_COD",      "111111" ,           Nil}, ;
                {"B1_DESC" ,    "PRODUTO TESTE",     Nil},;
                {"B1_TIPO",     "GG",                Nil},;
                {"B1_UM",       "PC",                Nil },;
                {"B1_LOCPAD",   "01",                Nil},;
                {"B1_PICM",     0,                   Nil},;
                {"B1_IPI",      0,                   Nil},;
                {"B1_CONTRAT",  "N",                 Nil},;
                {"B1_LOCALIZ",  "N",                 Nil};
              }

    // ÍNICIO DO CONTROLE DE TRANSAÇÃO
    Begin Transaction
        // CHAMANDO O CADASTRO DE PRODUTO (PASSANDO PARÂMETROS x e y que vai ser o aDados e )
        MSExecAuto({|x,y|MATA010(x,y)}, aDados,3  )

        // CASO OCORRA ALGUM ERRO (COMO SE FOSSE UM TRY CATCH)
        if lMSErroAuto 
            Alert("Ocorreram erros durante a operação!")
            MostraErro()

            DisarmTransaction()
        else
            MsgInfo("Operação finzalizada", "AVISO")
        endif
    End Transaction

    RestArea(aArea)
Return
