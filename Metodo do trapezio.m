  ##Iremos calcular a area da integral do numerador e depois calcular a integral do denominador e resolver m�dia separadamente
  ##Utilizamos o meu programa para definir a fun��o polinomial para prosseguir
  f = @(x)(0.804100081582283*x^10 - 96.5849636067969*x^9 + 5209.08942143939*x^8 - 166112.332658753*x^7 + 3468439.98940803*x^6 - 49547781.1457*x^5 + 490408640.741985*x^4 - 3320731205.9845*x^3 + 14722095361.5852*x^2 - 38587403206.8952*x + 45405767325.5356)*x;
  a = 9.38
  b = 14.58
  n = 10
  ##Definimos a altura do trap�zio atrav�s da rela��o (b-a)/n
  h = (b-a)/n
  x = a:h:b
  ##Definimos a soma de f(x0) && f(x10) separadamente vezes a constante 1/2 da f�rmula && em seguida criei um la�o de repeti��o entre o f(x1) && f(x9)
  s = (1/2)*(f(a)+f(b));
  ##Nesse la�o de repeti��o como dito anteriormente, definimos uma repeti��o entre f(x1) && f(x9)
  for i = 1: n-1
  s = s + f(a+i*h)
  endfor  
  Integral_numerador = (h*s)


 ##De acordo com a express�o dada, iremos utilizar somente o "x" no denominador
 ##Utilizamos o meu programa para definir a fun��o polinomial para prosseguir
 ##Iremos repitir o mesmo processo do numerador
 f = @(x)x;
  a = 9.38
  b = 14.58
  n = 10
  h = (b-a)/n
  x = a:h:b
  s = (1/2)*(f(a)+f(b));
  for i = 1: n-1
  s = s + f(a+i*h)
  endfor  
  Integral_denominador = (h*s)
  ##Aqui est� a temperatura m�dia pela Regra do Simpson
  Tm = Integral_numerador/Integral_denominador