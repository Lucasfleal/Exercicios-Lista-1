#INCLUDE 'PROTHEUS.CH'

User Function L01Ex28()
    Local aNome := {}
    Local cNomeTemp := ""
    Local nI

    for nI := 1 to 10
        cNomeTemp := FwInputBox("Inserir um nome: ", "")
        AADD( aNome, cNomeTemp )
    next

    FwAlertInfo("Foram inseridos 10 nomes", "Dados inseridos com sucesso!")

    BuscaNome(aNome)
Return 

Static Function BuscaNome(aNome)
    Local cNomeTemp := ""
    Local nPos := 0
    Local lContinua := .T.
    Local cContinua := ""

    while lContinua
        cContinua := ""
        cNomeTemp := FwInputBox("Buscar um nome: ", "")

        nPos := ASCAN( aNome, cNomeTemp)

        if nPos > 0
            FwAlertSuccess("Nome encontrado na posição " + CVALTOCHAR(nPos), "Achei!")
        else
            FwAlertError("Nome não foi encontrado", "Não Achei!")
        endif
        
        while cContinua != "S" .AND. cContinua != "N" .AND. cContinua != "n" .AND. cContinua != "s"
            cContinua := FwInputBox("Nova busca ? (S/N)", cContinua)

            if cContinua == "S" .OR. cContinua == "s"
                lContinua := .T.
            elseif cContinua == "N" .OR. cContinua == "n"
                lContinua := .F.
            else
                FwAlertError("Deve ser inserido S ou N", "PARAMETRO INVALIDO!")
            ENDIF
        end
    end
Return 
