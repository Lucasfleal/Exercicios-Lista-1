#INCLUDE 'PROTHEUS.CH'

User Function L01Ex37()
    Local nValorCompra := 0
    Local nTempCalc := 0
    // Local nValorDesc := 0
    Local nPorcDesc := 0
    // Local nI

    nValorCompra := val(FwInputBox("Digite o Valor da Compra: ", ""))

    if nValorCompra >= 500
        nPorcDesc := 1
        nTempCalc := nValorCompra - 500

        while nTempCalc >= 100 .and. nPorcDesc < 25
            nPorcDesc ++
            nTempCalc -= 100
        end
    endif

    FwAlertInfo("Valor da compra --> R$ " + CVALTOCHAR( nValorCompra ) + CRLF + "Porcentagem de Desconto --> " + CVALTOCHAR( nPorcDesc)+ "%" + CRLF + "Valor Final --> R$ " + CVALTOCHAR( nValorCompra - (nValorCompra * (nPorcDesc/100)) ), "Nota de Pagamento")


Return
