
($Mill)
($Millimeters)
($AddRegPart 2)
(teste2)

%2
:PROGRAMAFAC
G99(elimina zeros programs anteriores)
G54(Declara o 0 0 0 o ponto G54 0,0,12,7)
M06 T1 (roca de ferramenta para M06 broca 06mm)
G00 x10,5 Y0,5 Z0 (vai com velocidade maxima para o ponto x = 0  y = 0 z = 0)
M08(liga fuido de corte) 
G01 Z-12,7 F250 S200 M03 (move de forma linearG01 mudando a cordenada z com avanço de 250 F250 e velocidade de 250 e rotaçao horaria m3 )
X116,5
Y126,5
X10,5
Y0,5
M09(desliga fluido) 
G00 Z0 M05(muda para x =0 edeliga rotação)


M06  T1
G00 X43,5 Y98,5 Z0
