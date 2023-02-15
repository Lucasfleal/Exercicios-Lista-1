#INCLUDE 'PROTHEUS.CH'

User Function L01Ex11()
    Local nVal1 := ""
    Local nVal2 := ""
    Local nVal3 := ""
    Local lTriangulo 
    
    nVal1 := val(FwInputBox("Digite a medida do primeiro lado: ", nVal1))
    nVal2 := val(FwInputBox("Digite a medida do segundo lado: ", nVal2))
    nVal3 := val(FwInputBox("Digite a medida do terceiro lado: ", nVal3))

    lTriangulo := VerificaTriangulo(nVal1, nVal2, nVal3)

    if lTriangulo
        FwAlertSuccess( "Esses valores formam um triangulo", "É possivel!" )
    else
        FwAlertError("Esses Valores não formam um triangulo", "Não é possivel")
    endif
Return 

Static Function VerificaTriangulo(nVal1,nVal2,nVal3)
    Local lTriangulo 

    if (nVal1 + nVal2) > nVal3 .AND. nVal1 < (nVal2 + nVal3) .AND. nVal2 < (nVal1 + nVal3)
        lTriangulo := .T.
    else
        lTriangulo := .F.
    endif

Return lTriangulo 
