#INCLUDE 'PROTHEUS.CH'

User Function L01Ex08()
    Local cHoraTrab := ""
    Local nHoraTrab := 0
    Local cSalHora := ""
    Local nSalHora := 0
    Local nSalTotal := 0

    cHoraTrab := FwInputBox("Digite a quantidade de hora trabalhada: ", cHoraTrab)
    nHoraTrab := val(cHoraTrab) 
    cSalHora:= FwInputBox("Digite o salario/hora do funcionário: ", cSalHora)
    nSalHora := val(cSalHora) 

    if nHoraTrab <= 160
        nSalTotal := nHoraTrab * nSalHora        
    else
        nSalTotal := (160 * nSalHora) + ((nHoraTrab - 160) * nSalHora * 1.5)
    endif

    MSGINFO( "O salário do funcionário será de R$" + cValToChar(nSalTotal), "Salário do mês" )
Return 
