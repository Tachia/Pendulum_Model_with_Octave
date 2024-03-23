% ode45 - Undamped Pendulum
% d^2theta/dt^2 = -omega^2sin(theta)

% Parameters
init = [0.0 1.0];
function dxdt = eqn(t,y);
   omega = 10;
   dxdt(1) = y(2);
   dxdt(2) = -omega.^2*sin(y(1));
end

% Time Span for the simulation
tspan = [0 25];

% ODE45 Function
% odeopt = odeset('RelTol', 0.00001, 'AbsTol', 0.00001, 'InitialStep',0.5,'MaxStep',0.5);
[t,y] = ode45(@(t,y) eqn(t,y), tspan, init);

% Visualization of the models
subplot(1,2,1);plot(t,y(:,1),'r-',t,y(:,2),'b-');xlabel('time'); legend('y1(t)','y2(t)');
subplot(1,2,2);plot(y(:,1),y(:,2),'b-'); axis([-2.5 2.5 -2.5 2.5]); xlabel('y(2)');ylabel('y(1)');

% Alternative 1
omega = 10;
tspan = [0.0 1.0];
odeFun = @(t,y)[y(2); -omega.^2*sin(y(1))];
odeopt = odeset('RelTol', 0.00001, 'AbsTol', 0.00001, 'InitialStep',0.5,'MaxStep',0.5);
[t,y] = ode45(odeFun,[0 25], tspan, odeopt);

% Visualization of the models
subplot(1,2,1);plot(t,y(:,1),'r-',t,y(:,2),'b-');xlabel('time'); legend('y1(t)','y2(t)');
subplot(1,2,2);plot(y(:,1),y(:,2),'b-'); axis([-2.5 2.5 -2.5 2.5]); xlabel('y(2)');ylabel('y(1)');

% Alternative 2
omega = 10;
dy_dt = @(t,y)[y(2);...
              -omega.^2*sin(y(1))];
odeopt = odeset('RelTol',0.00001,'AbsTol',0.00001,'InitialStep',0.5,'MaxStep',0.5);
[t,y] = ode45(dy_dt,[0 25],[0.0 1.7],odeopt);

% Visualization of the models
subplot(1,2,1);plot(t,y(:,1),'r-',t,y(:,2),'b-');xlabel('time'); legend('y1(t)','y2(t)');
subplot(1,2,2);plot(y(:,1),y(:,2),'b-'); axis([-2.5 2.5 -2.5 2.5]); xlabel('y(2)');ylabel('y(1)');
