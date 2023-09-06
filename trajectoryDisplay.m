function trajectoryDisplay(System, x, y)

    leg = [];
    figure
    hold on
    for i=1:length(System)
        plot(x(i,:), y(i,:), System(i).col)
        leg = [leg, System(i).nome];
    end
    
    legend(leg);
    
    hold off
end