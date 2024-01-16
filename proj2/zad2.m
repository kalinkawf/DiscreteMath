miastaWloch = [
    0 570 220 700 0 510 300 40 340;    % 0 - Rome
  570 0 760 400 0 150 350 0 0;    % 1 - Milano
  220 760 0 830 0 400 0 670 0;    % 2 - Napoli
  700 400 830 0 0 630 0 0 520;    % 3 - Torino
    0 0 0 0 0 0 0 0 0;            % 4 - Palermo (brak połączeń w przykładowej macierzy)
  510 150 400 630 0 0 250 0 0;    % 5 - Genova
    300 350 0 0 0 250 0 900 0;      % 6 - Bologna
    40 0 670 0 0 0 900 0 620;      % 7 - Catania
    340 0 0 520 0 0 0 620 0         % 8 - Venezia
];

[minDrzewo, minKoszt] = kruskal(miastaWloch, 1000);
disp(minDrzewo);
disp(minKoszt);
