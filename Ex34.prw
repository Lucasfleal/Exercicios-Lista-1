#INCLUDE 'PROTHEUS.CH'

User Function L01Ex34()
    Local aPessoas := {}
    Local nQtd90 := 0
    Local nSomaIdade := 0
    Local nI

    aPessoas := SolicitaValores()

    for nI := 1 to 7
        if aPessoas[nI, 3] > 90
            nQtd90 ++
        endif
    next

    for nI := 1 to 7
       nSomaIdade += aPessoas[nI, 2]
    next

    FwAlertInfo("Das 7 pessoas, " + CVALTOCHAR(nQtd90) + " pesam mais de 90 quilos" + CRLF + "E a m�dia da idade das 7 pessoas � de : " + CVALTOCHAR( nSomaIdade/7 ))
Return 

Static Function SolicitaValores()
    Local nI
    Local aArray := {}
    Local cNome := ""
    local nIdade := 0, nPeso := 0

    for nI := 1 to 7
        cNome := FwInputBox("Nome da " + CVALTOCHAR(nI) + "� Pessoa: ", "")
        nIdade := val(FwInputBox("Idade da " + CVALTOCHAR(nI) + "� Pessoa: ", ""))
        nPeso := val(FwInputBox("Peso da " + CVALTOCHAR(nI) + "� Pessoa: ", ""))

        AADD( aArray, {cNome,nIdade,nPeso} )
    next

    FwAlertInfo("Inseridos dados das 7 pessoas com sucesso!", "Dados Inseridos!")
    
Return aArray
