#INCLUDE 'PROTHEUS.CH'

User Function L01Ex05()
    Local nPorcDist := 0.28
    Local nPorcImp := 0.45
    Local nValFinal := 0
    Local cCustoFab := ""
    Local nCustoFab := 0

    cCustoFab := FwInputBox("Digite o valor de custo de fábrica: ", cCustoFab)
    nCustoFab := val(cCustoFab)

    nValFinal := nCustoFab + (nCustoFab * nPorcDist) + (nCustoFab * nPorcImp)

    MSGINFO( "O valor final do Veiculo é R$" + CValToChar(nValFinal), "Valor Final")
Return 
