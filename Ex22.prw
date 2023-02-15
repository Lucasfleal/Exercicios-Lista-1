#INCLUDE 'PROTHEUS.CH'

User Function L01Ex22()
    Local nI := 0
    Local cMsg := ""
    Local nValor := 0

    nValor := SolicitaValor()

    for nI := 1 to 10
        cMsg += cValToChar(nI * nValor) + CRLF
    next

    FwAlertInfo(cMsg, "Resultado")
Return 

Static Function SolicitaValor()
    Local cValor := ""
    Local nValor := 0
    Local lValorValido := .F.

    while !lValorValido
        
        cValor := FwInputBox("Digite o numero para obter a tubuada até 10: ", cValor)
        nValor := val(cValor) 

        if nValor >= 1 .AND. nValor <= 10
            lValorValido := .T.
        else
            FwAlertError("Os numeros permitidos são de 1 á 10", "VALOR INVALIDO!")
        endif
    end

Return nValor
