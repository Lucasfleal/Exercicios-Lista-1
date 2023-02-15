#INCLUDE 'PROTHEUS.CH'

User Function L01Ex30()
    Local aArray := {}
    Local nTemVal := 0
    Local cMsg := ""
    Local nI

    for nI := 1 to 10
        nTemVal := val(FwInputBox("Inserir um valor: ", ""))
        AADD( aArray, nTemVal )
    next

    FwAlertInfo("Foram inseridos 10 números", "Dados inseridos com sucesso!")

    for nI := 10 to 1 STEP -1
        cMsg += CVALTOCHAR(aArray[nI]) + " "
    next

    FwAlertInfo(cMsg, "Dados inversos")
Return 
