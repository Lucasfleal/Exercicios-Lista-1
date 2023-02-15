#INCLUDE 'PROTHEUS.CH'

User Function L01Ex17()
    Local nNota1 := 0
    Local nNota2 := 0
    Local lContinua := .T.
    Local cContinua := ""

    while lContinua == .T.
        cContinua := ""
        nNota1 := SolicitaNota(1) 
        nNota2 := SolicitaNota(2) 

        FwAlertSuccess("A média desse aluno é de: " + CVALTOCHAR( (nNota1 + nNota2) / 2 ), "Média do aluno!")

        while cContinua != "S" .AND. cContinua != "N" .AND. cContinua != "n" .AND. cContinua != "s"
            cContinua := FwInputBox("Novo Calculo ? (S/N)", cContinua)

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

Static Function SolicitaNota(nNumProva)
    Local cNotaObtida := ""
    Local nNotaObtida := 0
    Local lNotaValida := .F.


    while lNotaValida == .F.
        
        cNotaObtida := FwInputBox("Digite a nota da " + CVALTOCHAR(nNumProva) + "º prova: ", cNotaObtida)
        nNotaObtida := val(cNotaObtida) 

        if nNotaObtida >= 0 .AND. nNotaObtida <= 10
            lNotaValida := .T.
        else
            FwAlertError("As notas vão de 0 á 10", "VALOR INVALIDO!")
        endif
    end

Return nNotaObtida
