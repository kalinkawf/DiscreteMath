function X = permutacje(n, p, X)
    for k = 1:p
        % Znajdź największe j, takie że aj < aj+1
        j = n - 1;
        while j >= 1 && X(j) > X(j + 1)
            j = j - 1;
        end
        
        % Jeśli nie znaleziono j, to to jest ostatnia permutacja
        if j == 0
            break;
        end
        
        % Znajdź najmniejsze k, takie że ak > aj i k > j
        k = n;
        while X(k) <= X(j)
            k = k - 1;
        end
        
        % Zamień aj z ak
        X([j, k]) = X([k, j]);
        
        % Odwróć porządek elementów aj+1, ..., an
        X(j+1:end) = flip(X(j+1:end));
    end
end