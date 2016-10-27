% Greybox for assignment 3.6, greybox data with white noise
% need to be loaded.



data = iddata(dTheta1_grey,Voltage_grey,Ts)

odefun = 'greybox_state_space';

% Constants given in assignment
J_1 = 1.7*10^-3; 
% J_2 = 4.8*10^-3;
N = 64;
K_lin = 1.19;
R_m = 3.21;
K_m = 8.39*10^-3;
parameters = {'Inertia 1',J_1;...
			'Gearbox', N;...
			'Spring constant',K_lin;...
			'Motor resistance',R_m;...
			'Motor constant',K_m};

% Set the funtion to return a continuous time 
% matrices, i.e., the function is not 
fcn_type = 'c'; 


sys = idgrey(odefun,parameters,fcn_type);

% sys.Structure.Parameters(1).Free = true;
sys.Structure.Parameters(2).Free = false;
sys.Structure.Parameters(3).Free = false;
sys.Structure.Parameters(4).Free = false;
sys.Structure.Parameters(5).Free = false;

sys.Structure.Parameters(1).Minimum = 0;

sys_est = greyest(data,sys)