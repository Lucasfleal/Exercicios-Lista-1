#INCLUDE 'PROTHEUS.CH'

User Function L01Ex04()
    Local cSalarioAtual := ""
    Local nSalarioAtual := 0
    Local cPorcentual := ""
    Local nSalarioNovo := 0

    cSalarioAtual := FwInputBox("Digite o salario atual do funcion�rio: ", cSalarioAtual)
    nSalarioAtual := val(cSalarioAtual)

    cPorcentual := FwInputBox("Digite o porcentual de reajuste: ", cPorcentual)

    nSalarioNovo := nSalarioAtual + (nSalarioAtual * (val(cPorcentual) / 100))

    MSGINFO( "O novo sal�rio do funcion�rio ser� de R$" + CValToChar(nSalarioNovo), "Sal�rio reajustado" )
Return 
