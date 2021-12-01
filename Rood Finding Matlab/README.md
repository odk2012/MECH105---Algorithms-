This one does Matlab algorithm which is Root Finding method. 


 *problem 1: Inputs:
 
func - the function being evaluated

 - the lower guess
 - the upper guess
es - the desired relative error (should default to 0.0001%)

maxit - the maximum number of iterations to use (should default to 200)

varargin, . . . - any additional parameters used by the function

Outputs:
root - the estimated root location
fx - the function evaluated at the root location
ea - the approximate relative error (%)
iter - how many iterations were performed

 *problem 2: Use the bisect function in your script file. It is included in Matlab Grader and can be called using
[root, fx, ea, iter] = bisect(func, xl, xu, es, maxit);
Where the function inputs and outputs are the same as in the flase position algorithm.
Finally, your script should include a of fprintf statement(s) which should print out the the value selected as the root,
how many iterations the method took,what the approximate error is and what f is evaluated at the root. 
Use the default values of the function when you can.
