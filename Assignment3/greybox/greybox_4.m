% Greybox for assignment 3.6, greybox data with white noise
% need to be loaded.



data_1 = iddata(dTheta1_grey(1:ceil(end/4)),Voltage_grey(1:ceil(end/4)),Ts);
data_2 = iddata(dTheta1_grey(ceil(end/4):ceil(end/2)),Voltage_grey(ceil(end/4):ceil(end/2)),Ts);
data_3 = iddata(dTheta1_grey(ceil(end/2):ceil(end-end/4)),Voltage_grey(ceil(end/2):ceil(end-end/4)),Ts);
data_4 = iddata(dTheta1_grey(ceil(end-end/4):end),Voltage_grey(ceil(end-end/4):end),Ts);



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

sys_est_1 = greyest(data_1,sys);
sys_est_2 = greyest(data_2,sys);
sys_est_3 = greyest(data_3,sys);
sys_est_4 = greyest(data_4,sys);


sys_est_1.Report.Parameters.ParVector(1)
sys_est_2.Report.Parameters.ParVector(1)
sys_est_3.Report.Parameters.ParVector(1)
sys_est_4.Report.Parameters.ParVector(1)

disp('Covariance for Dataset / 4')
cov([sys_est_1.Report.Parameters.ParVector(1) sys_est_2.Report.Parameters.ParVector(1) sys_est_3.Report.Parameters.ParVector(1) sys_est_4.Report.Parameters.ParVector(1)])