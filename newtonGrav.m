function [fx, fy] = newtonGrav(u, i, j, m)
    G = Constants.G;

    x_i = 4*i-3;
    y_i = 4*i-1;

    x_j = 4*j-3;
    y_j = 4*j-1;
    
    d = sqrt((u(x_i) - u(x_j))^2 + (u(y_i) - u(y_j))^2);

    fx = -G*m*(u(x_i) - u(x_j))/d^3;
    fy = -G*m*(u(y_i) - u(y_j))/d^3;

end