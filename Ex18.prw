#INCLUDE 'PROTHEUS.CH'

User Function L01Ex18()
    Local nI := 0
    Local cMsg := ""

    for nI := 1 to 10
        cMsg += cValToChar(nI) + CRLF
    next

    FwAlertInfo(cMsg, "Resultado")
Return 
