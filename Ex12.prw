#INCLUDE 'PROTHEUS.CH'

User Function L01Ex12()
    Local aTimes := {}
    Local cNomeTime := ""
    Local cQtdGols := ""
    Local nI := 0

    for nI := 1 to 2
        cNomeTime := FwInputBox("Digite o nome do "+ CValToChar(nI) + "º time: ", cNomeTime)
        cQtdGols := FwInputBox("Digite a quantidade de gols do "+ CValToChar(nI) + "º time: ", cQtdGols)

        AADD( aTimes, {cNomeTime, val(cQtdGols)} )

        cNomeTime := ""
        cQtdGols := ""
    next

    if aTimes[1, 2] > aTimes[2, 2]
        FwAlertSuccess("O time vencedor é o " + aTimes[1,1], "Time vencedor!")
    elseif aTimes[1, 2] < aTimes[2, 2]
        FwAlertSuccess("O time vencedor é o " + aTimes[2,1], "Time vencedor!")
    else
        FwAlertInfo("Ouve um empate", "EMPATE!!")
    endif
Return 
