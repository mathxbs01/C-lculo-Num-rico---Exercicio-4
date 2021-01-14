  ##Iremos calcular a area da integral do numerador e depois calcular a integral do denominador e resolver média separadamente
  ##Agora iremos calcular o numerador
  ##Utilizamos o meu programa para definir a função polinomial para prosseguir
  f = @(x)(0.804100081582283*x^10 - 96.5849636067969*x^9 + 5209.08942143939*x^8 - 166112.332658753*x^7 + 3468439.98940803*x^6 - 49547781.1457*x^5 + 490408640.741985*x^4 - 3320731205.9845*x^3 + 14722095361.5852*x^2 - 38587403206.8952*x + 45405767325.5356)*x;
  a = 9.38  
  b = 14.58  
  n = 10
  ##Iremos definir a altura através da expressão (b - a)/n
  h = (b - a)/n 
  x=a:h:b
  ##Definimos valor inicial a partir incrimental da soma de riemann pela esquerda, direita e média
  S_esq = 0;
  S_dir = 0;
  S_med = 0;
  ##Agora iremos definir a soma pela esquerda, dentro do laço de repetição
  for i=1:n  
  S_esq += f(x(i))*h;
  endfor  
  ##Agora iremos definir a soma pela direita, dentro do laço de repetição
  for i=1:n  
  S_dir += f(x(i+1))*h;
  endfor
  ##Agora iremos definir a média das somas, dentro do laço de repetição
  for i=1:n  
  S_med = (S_dir + S_esq)/2;
  endfor


  ##De acordo com a expressão dada, iremos utilizar somente o "x" no denominador
  ##Utilizamos o meu programa para definir a função polinomial para prosseguir
  ##Iremos repitir o mesmo processo do numerador
  f =@(x)x;
  a = 9.38;   
  b = 14.58;  
  n = 10;  
  h = (b - a)/n;  
  x = a:h:b  
  s_esq = 0;
  s_dir = 0;
  s_med = 0;
  for i=1:n  
  s_esq += f(x(i))*h;
  endfor  
  for i=1:n  
  s_dir += f(x(i+1))*h;
  endfor
  for i=1:n  
  s_med = (s_dir + s_esq)/2;
  endfor
  ##Aqui são os valores nominais das somas de riemann
  Soma_de_riemann_esq = S_esq/s_esq
  Soma_de_riemann_dir = S_dir/s_dir
  Soma_de_riemann_med = S_med/s_med
  ####Aqui está a temperatura média pela Soma de Riemann
  Tm = Soma_de_riemann_med