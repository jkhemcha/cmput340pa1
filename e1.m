% Vectorize the following
% Note the use of the tic/toc calls to time execution
% Compare the time once you have vectorized it

% Un-vectorized
tic
for i = 1:1000
    t(i) = 2*i;
    y(i) = sin (t(i));
end
toc
disp('Unvectorized script completed.')

% Vectorized
tic
t = 2 * (1:1000);
y = sin(t);
toc
disp('Vectorized script completed.')

clear;

% Elapsed time is 0.001419 seconds.
% Unvectorized script completed.

% Elapsed time is 0.000093 seconds.
% Vectorized script completed.