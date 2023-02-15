#INCLUDE 'PROTHEUS.CH'

User Function L01Ex21()
    Local nI := 0
    Local cMsg := ""
    Local cValor := ""

    cValor := FwInputBox("Digite até qual valor será apresentado: ", cValor)

    for nI := 1 to val(cValor)
        cMsg += cValToChar(nI) + CRLF
    next

    FwAlertInfo(cMsg, "Resultado")
Return 
