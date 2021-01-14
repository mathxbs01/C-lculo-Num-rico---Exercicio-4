  ##Iremos calcular a area da integral do numerador e depois calcular a integral do denominador e resolver média separadamente
  ##Utilizamos o meu programa para definir a função polinomial para prosseguir
  f = @(x)(0.804100081582283*x^10 - 96.5849636067969*x^9 + 5209.08942143939*x^8 - 166112.332658753*x^7 + 3468439.98940803*x^6 - 49547781.1457*x^5 + 490408640.741985*x^4 - 3320731205.9845*x^3 + 14722095361.5852*x^2 - 38587403206.8952*x + 45405767325.5356)*x;
  a = 9.38
  b = 14.58
  n = 10
  ##Iremos definir a altura através da expressão (b - a)/n
  h = (b - a)/n
  x = linspace(a,b,2*n+1) 
  ##Iremos calcular separadamente f(x0) + f(x10)
  s = f(a)+f(b);
  ##Para definir os f(x) impares, iremos utilizar n - 1 como critério de parada
  for i = 1:2:n-1
  s = s + 4*f(a+i*h);
  endfor
  ##Para definir os f(x) pares, iremos utilizar n-2 como critério de parada
  for i = 2:2:n-2
  s = s + 2*f(a+i*h);
  endfor
  ##Calcularemos em seguida o valor da integral do numerador
  Integral_numerador = h/3 * s  

  
  ##De acordo com a expressão dada, iremos utilizar somente o "x" no denominador
  ##Utilizamos o meu programa para definir a função polinomial para prosseguir
  ##Iremos repitir o mesmo processo do numerador
  f =@(x)x;
  a = 9.38
  b = 14.58
  n = 10
  h = (b - a)/n
  x = linspace(a,b,2*n+1) 
  s = f(a)+f(b);
  for i = 1:2:n-1
  s = s + 4*f(a+i*h);
  endfor
  for i = 2:2:n-2
  s = s + 2*f(a+i*h);
  endfor
  Integral_denominador = h/3 * s  
  ##Aqui está a temperatura média pela Regra do Simpson
  Tm = Integral_numerador/Integral_denominador 
  