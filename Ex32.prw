#INCLUDE 'PROTHEUS.CH'

User Function L01Ex32()
    Local aArray1 := {}
    Local aArray2 := {}
    Local nQtdIgual := 0
    Local nI

    aArray1 := SolicitaValores(1)
    aArray2 := SolicitaValores(2)

    for nI := 1 to 15
       if aArray1[nI] == aArray2[nI]
            nQtdIgual++
       endif
    next

    FwAlertInfo("Existem " + CVALTOCHAR(nQtdIgual) + " dados com o mesmo valor na mesma posição", "Dados iguais")
Return 

Static Function SolicitaValores(nNumArray)
    Local nI
    Local aArray := {}
    Local nTemVal := 0

    for nI := 1 to 15
        nTemVal := val(FwInputBox("Inserir um valor para o Array " + CVALTOCHAR(nNumArray) + ": ", ""))
        AADD( aArray, nTemVal )
    next

    FwAlertInfo("Inseridos 15 dados no Array " + CVALTOCHAR(nNumArray) + " com sucesso!", "Dados Inseridos!")
    
Return aArray
