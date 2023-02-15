#INCLUDE 'PROTHEUS.CH'

User Function L01Ex36()
    Local nValorFat := 0
    Local nI

    nValorFat := val(FwInputBox("Digite o valor para fatorar: ", ""))
   
    for nI := (nValorFat - 1) to 1 STEP -1
        nValorFat *= nI
    next

    FwAlertInfo("O resultado é: " + CValToChar(nValorFat), "Resultado do Fatoramento!")
Return
