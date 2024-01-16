% Definicja wierzchołków
a = 1;
b = 2;
c = 3;
d = 4;
e = 5;
f = 6;
g = 7;
h = 8;
i = 9;

% Definicja macierzy sąsiedztwa
G = [
    0 1 0 1 0 0 0 1 0
    1 0 0 0 0 0 0 1 0
    0 0 0 0 0 0 0 1 0
    1 0 0 0 0 0 0 1 0
    0 0 0 0 0 1 0 1 0
    0 0 0 0 1 0 1 1 1
    0 0 0 0 0 1 0 0 1
    1 1 1 1 1 1 0 0 0
    0 0 0 0 0 1 1 0 0
];

fprintf('WYPISYWANIE DFS\n')
% Wywołanie funkcji dfs
odwiedzone = dfs(G, a);

fprintf('WYPISYWANIE BFS\n')
% Wywołanie funkcji bfs
odwiedzone = bfs(G, a);
