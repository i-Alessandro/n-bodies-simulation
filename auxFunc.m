function [F] = auxFunc(System, u)
    n = length(System);
    s = length(u);

    for i=1:length(System)
        M(i) = System(i).massa;
    end

    F = zeros(s,1);
    for i=1:n
        x_i = 4*i-3;
        vx_i = 4*i-2;
        y_i = 4*i-1;
        vy_i = 4*i;

        F(x_i) = u(vx_i);
        F(y_i) = u(vy_i);

        idx = 1:n;
        idx = idx(idx~=i);

        for j=1:length(idx)
            [aF1, aF2] = newtonGrav(u, i, idx(j), M(idx(j)));

            F(vx_i) = F(vx_i) + aF1;
            F(vy_i) = F(vy_i) + aF2;
        end
    end
end

