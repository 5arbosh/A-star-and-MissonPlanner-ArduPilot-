function cost = compute_cost(mapSize, from, rTo, cTo)
    % Returns COST, an estimated cost to travel the map, starting FROM and
    %   ending at TO.
    [rFrom,cFrom] = ind2sub(mapSize, from);
    cost = sqrt((rFrom - rTo).^2 + (cFrom - cTo).^2);
end