% Principles of Mathematical Modelling
% Example 1: Modeling of Pendulum with Short Period of Time

% Define Function
function dydt = pend(t,y)
    % Initial Conditions
    w = 1; mu = 1;
    dydt(1) = y(2);
    dydt(2) = -mu*y(2) - w^2*sin(y(1));
end

% Time Span
tspan = [0 100];
init = [0 1];

% ODE45 Solver
odeopt = odeset('RelTol',0.00001,'AbsTol',0.00001,'InitialStep',0.5,'MaxStep',0.5);
[t,y] = ode45(@(t,y) pend(t,y),tspan,init, odeopt);

% Visualization
plot(t,y);
title('Pendulum with Extra Large Period');
xlabel('Time');
ylabel('Position');
legend('y1(t)','y2(t)');

hold on;

% Alternative Method
% Initial consition
w = 1;
mu = 1;
% ODE Function
dy_dt = @(t,y)[y(2);...
               -mu*y(2) - w^2*sin(y(1))];

% ODE45 Solver
odeopt = odeset('RelTol',0.00001,'AbsTol',0.00001,'InitialStep',0.5,'MaxStep',0.5);
[t,y] = ode45(dy_dt,[0 100],[0.0 1.0],odeopt);

% Visualization of the models
subplot(1,2,1);
plot(t,y(:,1),'r-',t,y(:,2),'b-');
xlabel('Time');
legend('y1(t)','y2(t)');
subplot(1,2,2);
plot(y(:,1),y(:,2),'b-');
axis([-1.5 1.5 -1.5 1.5]);
xlabel('Position (y2)');
ylabel('Position (y1)');
