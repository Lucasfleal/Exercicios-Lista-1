#INCLUDE 'PROTHEUS.CH'

User Function L01Ex02()
    Local cBase := ''
    Local cAltura := ''
    Local nArea := 0

    cBase := FwInputBox("Digite o valor da base do retângulo: ", cBase)
    cAltura := FwInputBox("Digite o valor da altura do retângulo: ", cAltura)

    nArea := val(cBase) * val(cAltura)

    MSGINFO("A área do retângulo é: " + cValToChar(nArea), "Área Total")

Return 
