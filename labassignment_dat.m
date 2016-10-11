% This file contains all constants and will
% load them into matlab workspace during 
% preload of the simulink model.

% Clears everything so theres nothing old 
% lying around and affects our simulation
clear all, clc, clf, close all

% Constants given in assignment
J_1 = 1.7*10^-3; 
J_2 = 4.8*10^-3;
N = 64;
K_lin = 1.19*10;
R_m = 3.21;
K_m = 8.39*10^-3;

% State-space [t1 dt1 t2 dt2]
A=[	0, 1, 0, 0;...
	-K_lin/J_1, -(K_m*N)^2/(R_m*J_1), K_lin/J_1, 0;...
	0, 0, 0, 1;...
	K_lin/J_2, 0, -K_lin/J_2, 0];
B=[	0;...
	(N*K_m)/(R_m*J_1);...
	0;...
	0];
C=[1, 0, 0, 0; % theta1
	-1, 0, 1, 0]; % alpha = theta2 - theta1
D=[0; 0];
