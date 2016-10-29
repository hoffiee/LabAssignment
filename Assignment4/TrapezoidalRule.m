function x = TrapezoidalRule(A,B,u,x0,h,n)

	% set initial value
	x = x0;

	s_A = size(A);

	% if u empty
	if all((size(u) == 0))
		u = zeros(1,n)
	end

	for i = 1:n
		x(:,i+1) = (eye(s_A)-h/2*A)^-1*((eye(s_A)+(h/2)*A)*x(:,i)+(h*B/2)*(u(:,i+1)+u(:,i)));
	end

end