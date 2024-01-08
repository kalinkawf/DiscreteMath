function odwiedzone = dfs(G, v)
    odwiedzone = [];
    stos = [v];
    while ~isempty(stos)
        u = stos(1);
        stos = stos(2:end);
        if u >= 1 && ~any(ismember(odwiedzone, u))
            odwiedzone = [odwiedzone u];
            fprintf('%d\n', u);
            for v = find(G(u, :))
                if ~ismember(v, odwiedzone)
                    stos = [stos v];
                    fprintf('%d -> %d\n', u, v);
                end
            end
        end
    end
end
