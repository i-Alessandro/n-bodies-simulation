function [x, vx, y, vy] = computation(System, t_min, t_max, dT)

    %-----------------Condizioni Iniziali del Sistema----------------------
    
    u_0 = getInitialConditions(System);
  
    %------------------Risoluzione Sistema---------------------------------
    u(:,1) = u_0;
    N = floor((t_max - t_min)/dT);
    for i = 2:N
        u_star = u(:,i-1) + dT*auxFunc(System, u(:,i-1));
        u(:,i) = u(:,i-1) + dT/2*(auxFunc(System, u(:,i-1)) + ...
                                    auxFunc(System, u_star));
    end
    
    %Heun funziona e approssima bene il problema. 
    %-----------------Plotting delle Traiettorie---------------------------

    x = [];
    vx = [];
    y = [];
    vy = [];

    for i=1:length(System)
        x = [x; u(4*i-3,:)];
        vx = [vx; u(4*i-2,:)];
        y = [y; u(4*i-1,:)];
        vy = [vy; u(4*i,:)];
    end

   trajectoryDisplay(System, x, y);