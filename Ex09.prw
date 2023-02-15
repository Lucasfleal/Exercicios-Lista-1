#INCLUDE 'PROTHEUS.CH'

User Function L01Ex09()
    Local cValor := ""
    Local nValor := 0

    cValor := FwInputBox("Digite um valor: ", cValor)
    nValor := val(cValor)

    if nValor > 0
        MSGINFO("Valor Positivo", "Positivo" )
    elseif nValor < 0
        MSGINFO("Valor Negativo", "Negativo" )
    else
        MSGINFO("Valor é 0", "0" )
    endif
Return 
