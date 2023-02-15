#INCLUDE 'PROTHEUS.CH'

User Function L01Ex26()
//    Local nTempValor := 0
    Local nSomaTot := 0
    Local nCont := 0
    Local nI := 0
    
    for nI := 15 to 100
        nSomaTot += nI
        nCont ++
    NEXT

    FwAlertInfo("A média é: " + CValToChar(nSomaTot/nCont), "Media de Números")
Return 
