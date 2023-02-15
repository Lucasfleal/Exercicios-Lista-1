#INCLUDE 'PROTHEUS.CH'

User Function L01Ex31()
    Local aArray := {}
    Local nTemVal := 0
    Local cMsg := ""
    Local nI

    for nI := 1 to 10
        nTemVal := val(FwInputBox("Inserir um valor: ", ""))
        AADD( aArray, nTemVal )
    next

    FwAlertInfo("Foram inseridos 10 números", "Dados inseridos com sucesso!")

    aSort(aArray)

    for nI := 1 to 10
        cMsg += CVALTOCHAR(aArray[nI]) + " "
    next

    FwAlertInfo(cMsg, "Dados Organizados")
Return 
