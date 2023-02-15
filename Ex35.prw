#INCLUDE 'PROTHEUS.CH'

User Function L01Ex35()
    Local aIdades := {}
    Local nSomaIdade := 0
    Local nI

    aIdades := SolicitaValores()

    for nI := 1 to LEN( aIdades )
       nSomaIdade += aIdades[nI]
    next

    FwAlertInfo("E a média da idades digitadas é de: " + CVALTOCHAR( nSomaIdade/LEN(aIdades) ), "Média das Idades")
Return 

Static Function SolicitaValores()
    Local aArray := {}
    local nIdade := 0
    Local lContinua := .T.

    while lContinua
        nIdade := val(FwInputBox("Idade da Pessoa: ", ""))

        if nIdade == 0
            lContinua := .F.
        else
            AADD( aArray, nIdade)
        endif
    end

    FwAlertSuccess("Inseridos dados com sucesso!", "Dados Inseridos!")
Return aArray
