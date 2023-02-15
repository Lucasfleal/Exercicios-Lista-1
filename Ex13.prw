#INCLUDE 'PROTHEUS.CH'

User Function L01Ex13()
    Local nQtdProd := 0
    Local cDescProd := ""
    Local nValUnit := 0
    Local nValTot := 0
    Local nValDesc := 0
    
    
    cDescProd := FwInputBox("Digite a descrição do Produto: ", cDescProd)
    nQtdProd := val(FwInputBox("Digite a quantidade adiquirida: ", ""))
    nValUnit := val(FwInputBox("Digite o preço unitario: ", ""))

    nValTot := nQtdProd * nValUnit

    nValDesc := CalcDesc(nQtdProd, nValTot)

    FwAlertInfo("Total: R$" + CVALTOCHAR(nValTot) + CRLF + "Desconto: R$" + CVALTOCHAR(nValDesc) + CRLF + "Total a pagar: R$" + CVALTOCHAR(nValTot - nValDesc) , "Compra do produto: " + cDescProd)
Return 

Static Function CalcDesc(nQtdProd, nValTot)
    Local nValDesc := 0
    do CASE
        CASE nQtdProd <= 5
        nValDesc := nValTot * 0.02

        CASE 5 < nQtdProd .And. nQtdProd <= 10 
        nValDesc := nValTot * 0.03

        OTHERWISE 
        nValDesc := nValTot * 0.05
    ENDCASE
Return nValDesc
