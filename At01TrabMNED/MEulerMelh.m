function y = MEulerMelh(f,a,b,n,y0)
%MEULER Método de Euler para resolução numérica de EDO/PVI
%   y'=f(t,y), t=[a,b], y(a)=y0
%   y(i+1)=y(i)+hf(t(i),y(i)), i=0,1,2,...,n
%INPUT:
%   f - função da EDO y'=f(t,y)
%   [a,b] - intervalo de valores da variável independente t
%   n - núnmero de subintervalos ou iterações do método
%   y0 - aproximação inicial y(a)=y0
%OUTPUT:
%   y - vetor das soluções aproximadas do PVI em cada um dos t(i)
%
%   26/03/2021  Arménio Correia  armenioc@isec.pt
%   26/04/2021  Nuno Santos : a2019110035@isec.pt
%   26/04/2021  Pedro Nogueira : a2020136533@isec.pt
%   26/04/2021  João Almeida :   a2020144466@isec.pt

h = (b-a)/n;
t = a:h:b;
y = zeros(1,n+1);
y(1) = y0;

for i = 1:n
    y(i+1) = y(i)+(h/2)*(f(t(i),y(i))+f(t(i),y(i)));
end

end
