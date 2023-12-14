p=10;
k=5;
n=7;
kelem_podzbior(n,p,k);

function kelem_podzbior(n,p,k)
if k>n
    error('ilość elementów w podzbiorze nie może być większa od liczby elementów w zbiorze głównym')
end 
%macierz do zapisywania podzbiorów
podzbior = zeros(p,k);
%zbior glowny
glowny = 1:n;
%pierwszy podzbiór
A=1:k;
podzbior(1, :) = A ;
%generowanie kolejnych podzbiorów
for j=2:p
    imin=k+1;
    for i=1:k
        if ~ismember(A(i)+1,A)
            if i<imin
                imin=i;
            end
     
        end
        if (A(i)==glowny(n)&&A(1)==(n-k+1))
          
            disp(podzbior);
            error('koniec zapisu zapisano juz ostatni podzbiór')
        end
    end
    %zapisanie wartości nowego podzbioru
     A(1:imin-1)=glowny(1:imin-1);
     A(imin)=A(imin)+1;
   podzbior(j, :) = A;
end
%wypisuje wartości macierzy p x k z podzbiorami
disp(podzbior);
end
