function y = multell(p,M,a,b,n);
% This function prints the Mth multiple of p on the elliptic
%  curve with coefficients a and b mod n.


z1=M;
y=[inf inf];
while (z1 ~=0),
    while (mod(z1,2) ==0),
        z1=(z1/2);
        p=addell(p,p,a,b, n);
        if (length(p)==0),
           y=[];
           disp('Multell found a factor of n and exited');
           z1;
           return;
        end;
    end;  %end while
    z1=z1-1;
    y=addell(y,p,a,b,n);
    if (length(y)==0),
       disp('Multell found a factor of n and exited');
       z1;
       return;
     end;
 end;






