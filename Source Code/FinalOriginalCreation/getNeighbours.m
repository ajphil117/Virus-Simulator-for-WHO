function neighbours = getNeighbours(CA, type, north, south, east, west)
    neighbours = (CA(north, :)==type) + (CA(south, :)==type) + (CA(:, east)==type) + (CA(:, west)==type) ...
               + (CA(north, east)==type) + (CA(north, west)==type) + (CA(south, east)==type) + (CA(south, west)==type);
end