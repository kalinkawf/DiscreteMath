function [minimalneDrzewo, koszt] = kruskal(macierzSasiedztwa, maksymalnyKoszt)
    n = size(macierzSasiedztwa, 1); % liczba miast
    krawedzie = [];

    % Tworzenie listy krawędzi w formie [waga, miasto1, miasto2]
    for i = 1:n
        for j = i+1:n
            if macierzSasiedztwa(i, j) > 0
                krawedzie = [krawedzie; macierzSasiedztwa(i, j), i, j];
            end
        end
    end

    % Sortowanie krawędzi według wag
    krawedzie = sortrows(krawedzie);

    % Inicjalizacja zbiorów rozłącznych
    rodzice = 1:n;

    minimalneDrzewo = {};
    koszt = 0;

    % Algorytm Kruskala
    for i = 1:size(krawedzie, 1)
        waga = krawedzie(i, 1);
        miasto1 = krawedzie(i, 2);
        miasto2 = krawedzie(i, 3);

        if check_cykl(rodzice, miasto1) ~= check_cykl(rodzice, miasto2) % Sprawdzenie, czy cykl
            if koszt + waga <= maksymalnyKoszt % Sprawdzenie, czy przekroczony max koszt
                koszt = koszt + waga;
                minimalneDrzewo{end+1} = [miasto1, miasto2];

                % Połączenie zbiorów rozłącznych
                rodzice(check_cykl(rodzice, miasto1)) = check_cykl(rodzice, miasto2);
            else
                break; % Przerwanie algorytmu, gdy osiągnięto maksymalny koszt
            end
        end
    end
end

function reprezentant = check_cykl(rodzice, miasto)
    while rodzice(miasto) ~= miasto
        miasto = rodzice(miasto);
    end
    reprezentant = miasto;
end
