function u=telegraph(N,a)
%
% N = number of samples
% a = switching probability
%
x=rand(N,1); u(1)=(-1)^(round(x(1))); for i=2:N
    u(i)=u(i-1)*(-1)^(x(i)<a);
end