#INCLUDE 'PROTHEUS.CH'

User Function L01Ex19()
    Local nI := 0
    Local cMsg := ""

    for nI := 10 to 1 STEP -1
        cMsg += cValToChar(nI) + CRLF
    next

    FwAlertInfo(cMsg, "Resultado")
Return 
