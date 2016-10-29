clear all, clc, clf, close all


% Read in the state space from assignment 2.1 and output from exact solution
assignment2_1
load('exactSolution.mat')



lambda = eig(A);

% Iterative search for step size
h = 0.01;
while ~all(abs((1+h*lambda/2)/(1-h*lambda/2)) < 1)
	abs(1+h*lambda);
	h=h/2;
end
disp(['stepsize h: ' num2str(h)])


% Generate input signal
t = 0:h:10; % 10 seconds simulation
u = sin(3*t);
% u=ones(size(t));
% Chosen input signal

x=TrapezoidalRule(A,B,u,[0; 0; 0; 0],h,10/h);


figure(1)
plot(t,x)
legend('show')
hold on
plot(output)
title(['Trapezoidal Rule, h= ' num2str(h)])
legend('Theta1','dTheta1','Theta2','dTheta2','ES: Theta1','ES: dTheta1','ES: Theta2','ES: dTheta2')
print('fig4_3','-depsc')

axis([0 1.2 -2 2])
print('fig4_3zoom','-depsc')