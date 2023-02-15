#INCLUDE 'PROTHEUS.CH'

User Function L01Ex03()
    Local cAnos := ''
    local cMeses := ''
    Local cDias := ''
    Local nIdadeEmDias := 0

    cAnos := FwInputBox("Digite a idade da pessoa em anos: ", cAnos)
    cMeses := FwInputBox("Digite a idade da pessoa em meses: ", cMeses)
    cDias := FwInputBox("Digite a idade da pessoa em dias: ", cDias)

    nIdadeEmDias := (val(cAnos) * 365) + (val(cMeses) * 30) + val(cDias)

    MSGINFO("A idade da pessoa em dias é: " + CValToChar(nIdadeEmDias), "Idade em dias")


Return 
