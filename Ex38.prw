#INCLUDE 'PROTHEUS.CH'

User Function L01Ex38()
    Local aIdades := {}
    Local nQtdMaior := 0
    Local nI

    aIdades := SolicitaValores()

    for nI := 1 to 10
        if aIdades[nI] >= 18
            nQtdMaior ++
        endif
    next

    FwAlertInfo(CVALTOCHAR( nQtdMaior ) + " pessoas possuem 18 anos ou mais", "Maiores de Idade")
Return 

Static Function SolicitaValores()
    Local nI
    Local aArray := {}
    local nIdade := 0

    for nI := 1 to 10
        nIdade := val(FwInputBox("Idade da " + CVALTOCHAR(nI) + "ª Pessoa: ", ""))

        AADD( aArray, nIdade)
    next

    FwAlertInfo("Inseridos dados com sucesso!", "Dados Inseridos!")
    
Return aArray
