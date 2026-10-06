#include 'protheus.ch'
#include 'parmtype.ch'

USER FUNCTION A010TOK()

    Local lExecuta := .T.
    Local cTipo := AllTrim(M->B1_TIPO)
    Local cConta := AllTrim(M->B1_CONTA)

    if (cTipo == "PA" .AND. cConta == "001")
        Alert("A conta <b> " + cConta + " </b> não pode estar associada a um produto do tipo <b> " + cTipo + "</b>" )

        // ENQUANTO A lExecuta for Falsa, o programa não dará continuidade
        lExecuta := .F.
    endif

Return (lExecuta)
