#INCLUDE 'TOTVS.CH'

user function L01Ex01()
    local cValor := ""
    Local nAntecessor := 0

    cValor := FwInputBox("Digite um valor: ", cValor)

    nAntecessor := val(cValor) - 1

    MSGINFO("O antecessor de " + cValor + " é " + CValtoChar(nAntecessor), "Numero Antesessor")
return
