#INCLUDE 'PROTHEUS.CH'

User Function L01Ex10()
    Local aValores := {}
    Local cValor := ""
    Local nI := 0

    for nI = 1 to 3
    cValor := FwInputBox("Digite um valor: ", cValor)
    AADD( aValores, val(cValor))
    cValor := ""
    next

    ASORT(aValores)

    MSGINFO(CValToChar(aValores[1]) + CRLF + CValToChar(aValores[2]) + CRLF + CValToChar(aValores[3]), "Valores em ordem crescente" )
Return
