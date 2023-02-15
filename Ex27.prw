#INCLUDE 'PROTHEUS.CH'

User Function L01Ex27()
    Local cMsg := ""
    Local nI := 0
    Local nI2 := 0

    for nI := 1 to 10
        cMsg += "(" + CVALTOCHAR( nI ) + ", "

        for nI2 := 1 to 10
            cMsg += CVALTOCHAR( nI2 ) + " "
        next
        cMsg += ")" + CRLF
    next

    FwAlertInfo(cMsg, "Sequência de Números")
Return 
