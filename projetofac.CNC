($Mill)
($Millimeters)
($AddRegPart 1)
(trabalhofinalfac)

%1
(Inicialmente travou-se os lados 2 e 4 da peça com 
a morsa para iniciar a usinagem da face superior)

G99 (Elimina zeros programs anteriores)*
G54 (Declara a referência como o ponto G54 (0, 0, 12,7))*
M06 T1 (Alocando a ferramenta fresa 06 mm)
G01 X5 Y3 Z0 (Movimento da fresa para o ponto escolhido como início da usinagem) 

M08 (Liga fluído de corte)

G01 Z-1,5 F524 S1290 M03 (Retirada de 1,5mm de material da face superior do blank)
M98 P1 L1 (Chama o sub programa 1 para fazer o trajeto da usinagem na face superior)

G01 Z0
X5 Y3 (Movimento da fresa para o respectivo ponto) 

G01 Z-2,7 F524 S1290 M03 (Retirada de 1,2mm de material, totalizando 2,7mm)
M98 P1 L1 (Chama o sub programa 1 para fazer o trajeto da usinagem na face superior)

(Com os lados 2 e 4 ainda travados, inicia-se o desbaste dos lados 1 e 3)

G01 Z0
X10,5 Y0,5 (Movimento da fresa para o ponto de início do desbaste nos lados 1 e 3)
G01 Z-12,7 F524 S1290 M03 (Mudando a cordenada Z e definindo o avanço de F524, velocidade de S1290 e rotaçao horaria M3)

M98 P2 L1 (Chama o sub programa 2 para realizar o trajeto do desbaste nos lados 1 e 3)

(Após feito o desbaste, fez-se o acabamento os lados 1 e 3)

G01 Z0
X10,5 Y0,5 (Movimento da fresa para o ponto de início do acabamento nos lados 1 e 3)
G01 Z-12,7 F137 S1800 M03 (Altera os parâmetros de F e S para o acabamento)

M98 P2 L1 (Chama o sub programa 2 para realizar o trajeto do acabamento nos lados 1 e 3)

G01 Z100 (Afastamento da fresa para iniciar a troca dos lados fixados na morsa)
G04 P120 (Pausa durante 100 segundos para trocar os lados de fixação da morsa)

(Com os lados 1 e 3 do blank travados inicia-se a usinagem dos lados 2 e 4)

G01 X116,5 Y15,5 (Movimento da fresa para o ponto de início do desbaste nos lados 2 e 4)
G01 Z-12,7 F524 S1290 M03 (Altera os parâmetros de F e S para o desbaste)

M98 P3 L1 (Chama o sub programa 3 para realizar o trajeto do desbaste nos lados 2 e 4)

(Após feito o desbaste, fez-se o acabamento os lados 1 e 3)

G01 Z0
X116,5 Y15,5 (Movimento da fresa para o ponto de início do acabamento nos lados 2 e 4)
G01 Z-12,7 F524 S1290 M03 (Altera os parâmetros de F e S para o acabamento)

M98 P3 L1 (Chama o sub programa 3 para realizar o trajeto do acabamento nos lados 2 e 4))

G01 Z0

(Após a realização dos processos anteriores, o próximo passo é a usinagem
dos números e do retângulo)

M98 P4 L1 (Chama o sub programa 4 para a usinagem do número 28)

G01 Z0

(M98 P5 L1 Chama o sub programa 5 para a usinagem do retângulo)

(Após os processos de fresagem, inicia-se o processo de furação)

M9 (Desligando fluido de corte para efetuar a troca de ferramenta)
G01 Z100 (Afastando a fresa para a troca de ferramenta)
T2 M06 (Realizando a troca de ferramenta para broca 04 mm)
S100 M3 (Ativando rotação horaria para a furação)
M8 (Ligando fluído de corte)

M98 P6 L1 (Chama o sub programa 6 - Furação)

G01 Z100

M30 (Fim do programa)

(Sub programa 1)
O1
G01 X122 Y3
X122 Y8
X5 Y8
X5 Y13
X122 Y13
X122 Y18
X5 Y18
X5 Y23
X122 Y23
X122 Y28
X5 Y28
X5 Y33
X122 Y33
X122 Y38
X5 Y38
X5 Y43
X122 Y43
X122 Y48
X5 Y48
X5 Y53
X122 Y53
X122 Y58
X5 Y58
X5 Y63
X122 Y63
X122 Y68
X5 Y68
X5 Y73
X122 Y73
X122 Y78
X5 Y78
X5 Y83
X122 Y83
X122 Y88
X5 Y88
X5 Y93
X122 Y93
X122 Y98
X5 Y98
X5 Y103
X122 Y103
X122 Y108
X5 Y108
X5 Y113
X122 Y113
X122 Y118
X5 Y118
X5 Y123
X122 Y123
M17 (Retorna para o programa principal)

(Sub programa 2)
O2
G01 X101,5
G02 X116,5 Y15,5 I15 J0

(Deslocamento da fresa para a usinagem do lado 3)
G01 Z100 
Y116,5
Z-12,7

(Inicia-se a usinagem do lado 3)  
G03 X106,5 Y126,5 I-10 J0
G01 X10,5
G01 X24 Y136,464461 
G01 X3,5 Y115,964461

M17 (Retorna para o programa principal)

(Sub programa 3)
O3
G01 Y116,5 (Usinagem do lado 2) 
G01 Z100
X10,5
Y127
G01 Z-12,7 (Usinagem do lado 4) 
Y0,5
M17 (Retorna para o programa principal)

(Sub programa 4)
O4
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
G00 X88,5 Y93,5 Z-4,7
G01 X103,5
G00 Z15
M17 (Retorna para o programa principal)

(Sub programa 5)
O5

M17 (Retorna para o programa principal)

(Sub programa 6)
O6
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
G80 (Fim do ciclo de furação)
M17 (Retorna para o programa principal)