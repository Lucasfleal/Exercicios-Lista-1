#INCLUDE 'PROTHEUS.CH'

User Function L01Ex25()
    Local nTempValor := 0
    Local nSomaTot := 0
    Local nI := 0
    
    for nI := 1 to 10
        nTempValor := val(FwInputBox("Digite o " + CValtoChar(nI) + "� valor: ", ""))

        nSomaTot += nTempValor
    NEXT

    FwAlertInfo("A soma dos numeros informados �: " + CValToChar(nSomaTot), "Soma de N�meros")
Return 
