# n-bodies-simulation
This repository contains code I wrote in order to simulate the trajectory of multiple bodies in space. I tested it with planets and moons from the solar system, but one can modify the default settings to simulate any kind of system. Given the large distances all objects are treated as point-like. 

## getPlanet.m
In here you can find the collection of all planets, or bodies you may want to add to your simulation, there is a template at the bottom for adding new structs, knowledge of the position vector and speed vector is needed, along with the mass of the object. 

## getSystem.m
This file generates an array of structs containing the bodies generated in getPlanet.m, in order to run different simulations without having to also change the previous file. 

## getInitialConditions.m
Extracts for the System object the initial data of each body. 

## Constants.m
A short script containing some useful 

## General.m
It'a an auxiliary file to start the simulation. The total number of iteration of the program can be changed. 

## computation.m
This file solves the system of differential equations with a multi-dimensional Heun algorithm. 

## auxFunc.m
This function computes the value of the function f(x) in a sigular or multiple differential equations in the form: y' = f(x), which is needed to perform the Heun algorithm. 

## newotonGrav.m
In this file, given two planets and their position, we get the force on each of the planets.

## trajectoryDisplay.m
Plots all of the planets trajectories, the color of each planet can be changed form the getPlanet.m file. 

