#INCLUDE 'PROTHEUS.CH'

User Function L01Ex23()
    Local nTempValor := 0
    Local nQtdNegativo := 0
    Local nI := 0
    
    for nI := 1 to 10
        nTempValor := val(FwInputBox("Digite o " + CValtoChar(nI) + "º valor: ", ""))

        if nTempValor < 0
            nQtdNegativo ++
        endif
    NEXT

    FwAlertInfo("Foram informados " + CValToChar(nQtdNegativo) + " numeros negativos", "Números negativos")
Return 
