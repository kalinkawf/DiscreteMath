function wynik = randomizer_test(n, p, k)
    wynik = zeros(p, k);  % Wstawienie pustej macierzy
       
    % Generowanie podzbiorów
    for i = 1:p
        A = randperm(n, k);  % Losowy wybór k elementów spośród n
        wynik(i, : ) = A;    % Dodanie podzbioru
    end
end