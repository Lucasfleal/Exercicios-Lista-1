#INCLUDE 'PROTHEUS.CH'

User Function L01Ex04()
    Local cSalarioAtual := ""
    Local nSalarioAtual := 0
    Local cPorcentual := ""
    Local nSalarioNovo := 0

    cSalarioAtual := FwInputBox("Digite o salario atual do funcionário: ", cSalarioAtual)
    nSalarioAtual := val(cSalarioAtual)

    cPorcentual := FwInputBox("Digite o porcentual de reajuste: ", cPorcentual)

    nSalarioNovo := nSalarioAtual + (nSalarioAtual * (val(cPorcentual) / 100))

    MSGINFO( "O novo salário do funcionário será de R$" + CValToChar(nSalarioNovo), "Salário reajustado" )
Return 
