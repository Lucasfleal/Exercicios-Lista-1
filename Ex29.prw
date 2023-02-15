#INCLUDE 'PROTHEUS.CH'

User Function L01Ex29()
    Local aArray1 := {}
    Local aArray2 := {}
    Local nTemVal := 0
    Local nNum := 0
    Local cMsg := ""
    Local nI

    for nI := 1 to 10
        nTemVal := val(FwInputBox("Inserir um valor: ", ""))
        AADD( aArray1, nTemVal )
    next

    FwAlertInfo("Foram inseridos 10 números", "Dados inseridos com sucesso!")

    nNum := val(FwInputBox("Inserir o valor multiplicador: ", ""))

    for nI := 1 to 10
        nTemVal := aArray1[nI] * nNum
        AADD( aArray2, nTemVal )
        cMsg += CVALTOCHAR(nTemVal) + " "
    next

    FwAlertInfo(cMsg, "Dados da aArray2")
Return 
