function x = AdamBashforth(A,B,u,x0,h,n)

	% set initial value
	x = x0;

	s_A = size(A);

	% if u empty
	if all((size(u) == 0))
		u = zeros(1,n)
	end

	% calculate first step with Forward Euler
	s_x = size(x);
	if s_x(2) == 1
		x = ForwardEuler(A,B,u,x0,h,1);
	end

	for i = 2:n
		x(:,i+1) = x(:,i) + 0.5*h*(3*(A*x(:,i)+B*u(:,i))-(A*x(:,i-1)+B*u(:,i-1)));
	end

end