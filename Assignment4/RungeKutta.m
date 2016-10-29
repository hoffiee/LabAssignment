function x = RungeKutta(A,B,u,x0,h,n)

	% set initial value
	x = x0;	

	% if u empty
	if all((size(u) == 0))
		u = zeros(1,n);
	end

	for i = 1:n
		k1 = A*x(:,i)+B*u(:,i);
		k2 = A*(x(:,i)+(h/2)*k1)+B*(u(:,i)); 
		x(:,i+1) = x(:,i) + h*k2;
	end

end