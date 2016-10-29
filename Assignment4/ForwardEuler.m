function x = ForwardEuler(A,B,u,x0,h,n)

	% set initial value
	x = x0;

	% If u empty
	if all((size(u) == 0))
		u = zeros(1,n);
	end

	s_A = size(A);
	for i = 1:n
		x(:,i+1) = (eye(s_A)+h*A)*x(:,i)+h*B*u(:,i);
	end

end