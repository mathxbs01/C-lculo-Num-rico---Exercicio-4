import numpy as np
from sympy import Symbol
import sympy as sym
#x = raio(cm)
#y = temperatura(raio)
x=9.38,9.9,10.42,10.94,11.46,11.98,12.50,13.02,13.54,14.06,14.58;   
y= 338,423,474,506,557,573,601,622,651,661,671;
xp=Symbol('x')
arrayLen=len(x)
l=[]
for i in range(arrayLen):
    arrayaux=np.arange(arrayLen)
    arrayaux=list(arrayaux)
    arrayaux.remove(i)
    numLi=1
    denli=1
    for j in arrayaux:
        numLi=numLi*(xp-x[j])
        denli=denli*(x[i]-x[j])
#Determinando o produtório de todas as entradas
    Li=numLi/denli
    l.append(sym.expand(Li))
#Agora iremos determinar o grau do polinomio
p=np.sum(y*np.array(l))
print("Polinômio=")
print(p)