function obj=addFailure(obj,t,e,dur)
% Add test case failure to a MoxUnitTestResult instance
%
% obj=addError(obj,t,e)
%
% Inputs:
%   obj             MOxUnitTestResult instance.
%   t               MoxUnitTestCase that gave a failure.
%   e               Exception associated with the failure.
%   dur             Duration of runtime until failure (in seconds).
%
% Output:
%   obj             MOxUnitTestResult instance with the failure added.
%
% NNO 2015

    obj.failures{end+1}={t,e};
    obj.testsRun=obj.testsRun+1;
    obj.duration=obj.duration+dur;
    report(obj,'F','FAILED',t);
