#INCLUDE 'PROTHEUS.CH'

User Function L01Ex16()
    Local nNota1 := 0
    Local nNota2 := 0

    nNota1 := SolicitaNota(1) 
    nNota2 := SolicitaNota(2) 

    FwAlertSuccess("A m�dia desse aluno � de: " + CVALTOCHAR( (nNota1 + nNota2) / 2 ), "M�dia do aluno!")
Return 

Static Function SolicitaNota(nNumProva)
    Local cNotaObtida := ""
    Local nNotaObtida := 0
    Local lNotaValida := .F.

    while lNotaValida == .F.    
        cNotaObtida := FwInputBox("Digite a nota da " + CVALTOCHAR(nNumProva) + "� prova: ", cNotaObtida)
        nNotaObtida := val(cNotaObtida) 

        if nNotaObtida >= 0 .AND. nNotaObtida <= 10
            lNotaValida := .T.
        else
            FwAlertError("As notas v�o de 0 � 10", "VALOR INVALIDO!")
        endif
    end
Return nNotaObtida
