#INCLUDE 'PROTHEUS.CH'

User Function L01Ex06()
    Local nTempF := 0
    Local cTempC := ""

    cTempC := FwInputBox("Digite a temperatura em Celsius: ", cTempC)

    nTempF := ((9 * val(cTempC)) + 160) / 5

    MSGINFO( "A temperatura em Fahrenheit é " + CValToChar(nTempF) + "F", "Temperatura em Fahrenheit" )

Return 
