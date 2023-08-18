function y=dB(x,tol_op)
% 20*log10(|x|) (paso a dB de n�meros complejos) 
%CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
%
% PROP�SITO: 
% Pasar el m�dulo de complejos a decibelios  
%
% ARGUMENTOS: 
% y=dB(x,tol)
% y=dB(x) supone tol=eps
% Si x es matriz, y es matriz del mismo tama�o
%
% DESCRIPCI�N: 
% y=20*log10(abs(x));
% Si existe alg�n �ndice i,j que verifique abs(x(i,j))==0, 
% se calcula y(i,j)=20*log10(abs(x(i,j)+tol))
%
% �LTIMA MODIFICACI�N: X-17-01-2001 (E)
%
% VER TAMBI�N: plotdB.m,grados.m,minorm.m
%
% jorge.ruizcruz@uam.es
% $Revision: 0.0 $  $Date: 2014/12/04 12:00:00 $
%
%CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

% Numero de argumentos
if nargin==1
   tol=eps;
elseif nargin==2
   tol=tol_op;
else 
   error('Num de arg equivocados');
end

% Calculo
[indi,indj]=find(abs(x)==0);
x(indi,indj)=x(indi,indj)+tol;
y=20*log10(abs(x));

%CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
%CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
%CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
%CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
%Fin de fichero