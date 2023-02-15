#INCLUDE 'PROTHEUS.CH'

User Function L01Ex14()
    Local nValor1 := ""
    Local nValor2 := 0

    nValor1 := val(FwInputBox("Digite o valor a ser divido: ", ""))

    while nValor2 == 0
        nValor2 := val(FwInputBox("Digite o valor do divisor(Deve ser diferente de 0): ", ""))
    end

    FwAlertSuccess("O resultado da divisão é: " + CValToChar(nValor1 / nValor2), "Resultado da divisão")    
Return 
