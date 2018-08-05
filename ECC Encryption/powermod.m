function y = powermod(a,z,n)
% This function calculates y = a^z mod n
% If a is a matrix, it calculates a(j,k)^z mod for every element in a
[ax,ay]=size(a);


% If a is negative, put it back to between 0 and n-1
a=mod(a,n);

% Take care of any cases where the exponent is negative
if (z<0),
   z=-z;
   for j=1:ax,
      for k=1:ay,
         a(j,k)=invmodn(a(j,k),n);
      end;
   end;   
end;


for j=1:ax,
for k=1:ay,
  x=1;
  a1=a(j,k);
  z1=z;
  while (z1 ~= 0),
     while (mod(z1,2) ==0),
        z1=(z1/2);
        a1=mod((a1*a1), n);
     end;  %end while
     z1=z1-1;
     x=x*a1;
     x=mod(x,n);
  end;
  y(j,k)=x;  
end; %end for k
end; %end for j

