($Mill)
($Millimeters)
($AddRegPart 1)
(trabalhofinalfac)

%1
G99(elimina zeros programs anteriores)
G54(Declara o 0 0 0 o ponto G54 0,0,12,7)
M06 T1 (roca de ferramenta para M06 broca 06mm)
G00 x10,5 Y0,5 Z0 (vai com velocidade maxima para o ponto x = 0  y = 0 z = 0)
M08(liga fuido de corte) 



M98 P1 L1 (Call sub program 1)
M98 P2 L1 (Call sub program 2)

M9 (Desligando fluido de corte)
G00 Z15 (Afastando da placa para troca de ferramenta)
T2 M06 (Troca de Ferramenta)
S100 M3 (Ativando rotação horaria para furo de 4080 rpm no sentido horario)
M8 (Ligando fluído de corte)
M98 P3 L1 (Call sub program 3)

M30 

(Sub program 1)
O1
G01 Z-12,7 F0,1 S100 M03 (move de forma linearG01 mudando a cordenada z com avanço de 250 F250 e velocidade de 250 e rotaçao horaria m3 )
X101,5
G02 X116,5 Y15,5 I15 J0
G01 Y116,5
G03 X106,5 Y126,5 I-10 J0
G01 X10,5
G00 X24 Y136,464461 (Y138,47)
G01 X3,5 Y115,964461 (Y115,97)
G00 X10,5
Y127
G01 Y0,5
M17 (Return)

(Sub program 2)
O2
G00 Z15
G00 X63,5 Y108,5
G01 X63,5 Y108,5 Z-4,7
X78,5
Y93,5
X63,5
Y78,5
X78,5

G00 Z15
G00 X88,5 Y108,5
G01 X88,5 Y108,5 Z-4,7
X103,5
Y78,5
X88,5
Y108,5
G00 Z15
G00 X88,5 Y93,5 Z-2
G01 X103,5
G00 Z15
M17 (Return)

(Sub program 3)
O3
G00 Z15
G81 X28,5 Y98,5 Z-12,7 R2 W6 F360
Y88,5
Y78,5
Y68,5
Y58,5
X43,5
Y68,5
Y78,5
Y88,5
Y98,5
G80(Fim do ciclo de furação)
M17 (Return)