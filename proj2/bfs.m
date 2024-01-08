function odwiedzone = bfs(G, v)
    odwiedzone = [];
    kolejka = [v];
    while ~isempty(kolejka)
        u = kolejka(1);
        kolejka = kolejka(2:end); % Usunięcie pierwszego elementu kolejki
        if ~ismember(u, odwiedzone)
            odwiedzone = [odwiedzone u];
            fprintf('%d\n', u);
            for v = find(G(u, :))
                if ~ismember(v, odwiedzone)
                    fprintf('%d -> %d\n', u, v);
                    kolejka = [kolejka v];
                end
            end
        end
    end
end
