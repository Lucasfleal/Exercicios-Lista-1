#INCLUDE 'PROTHEUS.CH'

User Function L01Ex02()
    Local cBase := ''
    Local cAltura := ''
    Local nArea := 0

    cBase := FwInputBox("Digite o valor da base do ret�ngulo: ", cBase)
    cAltura := FwInputBox("Digite o valor da altura do ret�ngulo: ", cAltura)

    nArea := val(cBase) * val(cAltura)

    MSGINFO("A �rea do ret�ngulo �: " + cValToChar(nArea), "�rea Total")

Return 
