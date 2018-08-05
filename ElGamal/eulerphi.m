function phi = eulerphi(n);
% Calculates the Euler phi function of n
 
f=factor(n);
fln=length(f);
f(fln+1)=0;   % Appending a zero to make (f(j)==f(j+1)) never go out of bounds

phi=1;
ct=0;
for j=1:fln,
   if (f(j)==f(j+1)),
      ct=ct+1; %count number of times a factor occurs
   else
      phi=phi*f(j)^ct;
      phi=phi*(f(j)-1);
      ct=0;
   end;
end;

   