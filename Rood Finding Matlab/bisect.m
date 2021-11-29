% Define problem constants
g = 9.81;
mu = 0.55;
F = 150;
m = 25;

% Define the function to be solved for. Is the angle specified in radians or degrees?
format long 
func =@(theta)mu*m*g./(cosd(theta)+(mu*sind(theta)))-F;

% THINK, what makes range sense for angle?

% Plot your function. Does plotting give you an idea about where the root is?
theta = linspace(-90,90);
plot(theta,func(theta))
xlabel('angle')
ylabel('function')
grid on
% Finaly solve for the root using the bisection script given to you, which can be called as:
%[root, fx, ea, iter] = bisect(func, lower_bound, upper_bound);
lower_bound = 50;
upper_bound = 80;
[root, fx, ea, iter] = bisect(func, lower_bound, upper_bound);
fprintf('results: %.4f yvalueResult: %.8f error:  %.4f iterations: %d/n',root,fx,ea,iter);
angle = root;
fx = fx;
iter = iter; 
ea = ea;
% These variables will be checked for your final answer:
%angle =  % the angle in degree that solves this problem
%fx =     % the function value at your solved angle
%ea =     % the bisection error estimate
%iter =   % the number of bisection iterations