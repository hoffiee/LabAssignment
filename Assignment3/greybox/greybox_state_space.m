function [A,B,C,D] = greybox_state_space(J_1,N,K_lin,R_m,K_m,Ts)
A=[(-(K_m*N)^2)/(J_1*R_m)];
B=[K_m*N/(J_1*R_m)];
C=[1];
D=[0];
end
