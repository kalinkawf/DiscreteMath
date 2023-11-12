A = podzbior(7,[1 2 3 5]);
for i = 1:10
    disp(A{i})
end

function [A] = podzbior(n,X)
    % Inicjalizacja komórki A
    A = cell(1,2^n-1);
    % Pierwszy podzbiór to zbiór X
    A{1} = X;
    % Pętla generująca kolejne podzbiory
    for i = 2:2^n-1
        % Znajdź największy element nie należący do A
        a = max(setdiff(1:n,A{i-1}));
        % Jeśli nie ma takiego elementu, to koniec
        if isempty(a)
            break
        end
        % Dodaj a do zbioru A i usuń elementy większe od a
        A{i} = sort([A{i-1} a]);
        A{i}(find(A{i}==a)+1:end) = [];
    end
end
