#INCLUDE 'PROTHEUS.CH'

User Function L01Ex39()
    Local aNomes := {"Daniele", "Edison", "Fabio", "Giulliana", "Henrique", "João", "Lucas", "Matheus", "Natan", "Stephani", "Tamiris", "Gabriela", "Gustavo F.", "Gustavo H.", "Ruan", "Vinicius", "Muriel"}
    Local nNumbSort := 0

    nNumbSort := RANDOMIZE(1, 17)

    FwAlertInfo("O nome sorteado foi: " + aNomes[nNumbSort], "SORTEIO!")
Return 
