function g = primitiveroot(p);
% This function finds a primitive root for n
n=p;
% Handle Trivial case
g=0;
if (n==2),
   g=1;
else
   phi=eulerphi(n);
   f=factor(phi);
   fln=length(f);
   y=2;
   while y<n,
      flag=0;
      if (gcd(y,n)==1),
         j=1;
         while (j<=fln),
            b=powermod(y,phi/f(j),n);
            if (b==1),
               j=fln;  % force break from for j loop
               flag=1;
            end; %endif
            j=j+1;
         end; %end while j
      end; % end if gcd
      if ~flag,
         g=y;
         y=n;  % force break out of y loop
      end; 
      y=y+1;
   end;  % end while y
end;  % end if-else


            