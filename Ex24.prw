#INCLUDE 'PROTHEUS.CH'

User Function L01Ex24()
    Local nTempValor := 0
    Local nQtdIntervalo := 0
    Local nQtdFora := 0
    Local nI := 0
    
    for nI := 1 to 10
        nTempValor := val(FwInputBox("Digite o " + CValtoChar(nI) + "º valor: ", ""))

        if nTempValor >= 10 .AND. nTempValor <= 20
            nQtdIntervalo ++
        else
            nQtdFora ++
        endif
    NEXT

    FwAlertInfo("Foram informados " + CValToChar(nQtdIntervalo) + " numeros de 10 a 20" + CRLF + "Foram informados " + CValToChar(nQtdFora) + " fora do intervalo", "Intervalo de Números")
Return 
