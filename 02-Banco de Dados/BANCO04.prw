#include 'protheus.ch'
#include 'parmtype.ch'

USER FUNCTION BANCO04()
    Local aArea := SB1->(GetArea())

    DbSelectArea('SB1')
    SB1->(DbSetOrder(1))
    SB1->(DbGoTop())

    // INICIAR A TRANSAÇÃO
    Begin Transaction 
        MsgInfo("A descrição do produto será alterada!", "ATENÇÃO")

        // PEGANDO O CÓDIGO 000002 PARA ALTERAR A DESC DELE 
        if SB1->(DbSeek(FWXFilial('SB1') + '000002'))
            RecLock('SB1', .F.) //TRAVA REGISTRO PARA ALTERAÇÃO
        B1_DESC := "MONITOR DELL 42 PL"

            SB1->(MsUnlock())
        endif
        MsgAlert("ALTERAÇÃO EFETUADA!", "ATENÇÃO")
    End Transaction

    RestArea(aArea)
Return
