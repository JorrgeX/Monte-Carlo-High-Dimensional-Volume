function [vol] = MCsphereVol(dim)

% initial values
r = 1;
num_gen = 10e5;
cnt = 0;

parfor i = 1 : num_gen
    randoms = zeros(1, dim);
    for j = 1 : dim 
        randoms(j) = rand*r*2 - r;
    end

    if sum(randoms.^2) <= r^2
        cnt = cnt + 1;
    end
end

vol = (cnt/num_gen) * (2*r)^dim;

end