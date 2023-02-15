#INCLUDE "PROTHEUS.CH"

User Function L01Ex07()
    Local cQtdMaca := ""
    Local nQtdMaca := 0
    Local nValorTot := 0
    
    cQtdMaca := FwInputBox("Digite a quantidade de maçãs: ", cQtdMaca)
    nQtdMaca := val(cQtdMaca)

    if nQtdMaca < 12
        nValorTot := nQtdMaca * 1.3
    else
        nValorTot := nQtdMaca * 1
    endif

    MSGINFO( "O valor total para " + cQtdMaca + " é de R$" + CValToChar(nValorTot), "Valor Total" )

Return 
