#INCLUDE 'PROTHEUS.CH'

User Function L01Ex15()
    Local cValor1 := ""
    Local cValor2 := ""
    Local nValor2 := 0

    cValor1 := FwInputBox("Digite o valor a ser divido: ", cValor1)

    while nValor2 == 0
        cValor2 := FwInputBox("Digite o valor do divisor(Deve ser diferente de 0): ", cValor2)
        nValor2 := val(cValor2) 
        if nValor2 == 0
            FwAlertError("O valor não pode ser igual a 0", "VALOR INVALIDO!")
        endif
    end

    FwAlertSuccess("O resultado da divisão é: " + CValToChar(val(cValor1) / nValor2), "Resultado da divisão")    
Return 
