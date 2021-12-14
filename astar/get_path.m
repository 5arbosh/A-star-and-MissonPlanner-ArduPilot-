function p = get_path(cameFrom, current)
    % Returns the path. This function is only called once and therefore
    %   does not need to be extraordinarily efficient
    inds = find(cameFrom);
    p = nan(1, length(inds));
    p(1) = current;
    next = 1;
    while any(current == inds)
        current = cameFrom(current);
        next = next + 1;
        p(next) = current; 
    end
    p(isnan(p)) = [];
end
