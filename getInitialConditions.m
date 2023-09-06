function [u_0] = getInitialConditions(System)
    n = length(System);
    u_0 = zeros(n*4,1);
    for i=1:n
        x_i = 4*i-3;
        vx_i = 4*i-2;
        y_i = 4*i-1;
        vy_i = 4*i;

        u_0(x_i) = System(i).pos(1);
        u_0(vx_i) = System(i).vel(1);
        u_0(y_i) = System(i).pos(2);
        u_0(vy_i) = System(i).vel(2);

    end
end
