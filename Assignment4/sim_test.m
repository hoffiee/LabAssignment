clc, clf, close all, format compact
A = [-2]; 
B=[0];
h = 0.2;
u=[];
x=[1];
n=ceil(0.4/h)


x_FE = ForwardEuler(A,B,u,x,h,n)
x_AB2 = AdamBashforth(A,B,u,x,h,n)
x_TR = TrapezoidalRule(A,B,u,x,h,n)
x_RK = RungeKutta(A,B,u,x,h,n)


t = 0:h:h*n;


plot(t, x_FE)
hold on
plot(t, x_AB2)
plot(t, x_TR)
plot(t, x_RK)
legend('show')
legend('FE','AB2','TR','RK(2)')
