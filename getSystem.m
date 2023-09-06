function [System] = getSystem()
    Terra = getPlanet("Terra");
    Marte = getPlanet("Marte");
    Sole = getPlanet("Sole");
    Luna = getPlanet("Luna");
    Giove = getPlanet("Giove");
    Mercurio = getPlanet("Mercurio");
    Venere = getPlanet("Venere");


    System = [Sole, Terra, Luna, Marte, Giove, Mercurio, Venere];
end