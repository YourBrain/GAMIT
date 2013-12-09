function params = GAMIT_Params()
%
% helper function to return standard GAMIT spreading activation parameters

%curve evolution parameters
params.initialActivation = 1;
params.nColumns = 200;
params.nIterations = 2000;      % number of timesteps we evolve curve for

params.alpha = 0.7;             % self activation 
params.beta = 0.14952;          % spreading activation
params.noiseFactor = 0.000025;  % noise

params.GaussianFit = false;      %is gamit score the stddev of the best fit gaussian 
                                 %or is it SummedActivation + MaxActivation?

%curve sampling params
params.bias = 0.87;              %single parameter to account for fact that humans always underestimate/overproduce intervals.
params.sampleErrorSize = .02;    % margin of error on an sample from curve
params.MemoryUncertainty = false; %is there any additional uncertainty when we read off from the lifetime Curve?

%prospective model parameters
params.WorkingMemoryDelta = false; %Do we just a subset of sampling deltas or all of them?
params.RandomAccessMemory = false; %If WMD=true, is the subset random or just the most recent deltas
params.nSampleDeltas = 6;       % how many samples can we keep in memory?

params.sampleFrequency = 50;    % base rate of one sample every fifty ticks
params.PoissonSampling = true;  % are time points samples according to a Poisson process or uniform random variable