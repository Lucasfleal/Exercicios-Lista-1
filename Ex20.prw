#INCLUDE 'PROTHEUS.CH'

User Function L01Ex20()
    Local nI := 0
    Local cMsg := ""

    for nI := 100 to 109
        cMsg += cValToChar(nI + 1) + CRLF
    next

    FwAlertInfo(cMsg, "Resultado")
Return 
