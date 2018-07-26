% The data file rhodemtgrid.mat was amended on Sep 18 4:30pm.
% rhoD = -sigmad/(sigmaA*sigmaP - sigmad^2) was changed to be just 
% rhoD = -sigmad/(sigmaA*sigmaP) in order to justify neglecting the
% scattering time. (or equivalently setting it to 1) 

% The code sigmadnrhodEMT.m was amended also to reflect this definition of
% rhoD, even though the code was not rerun. This was not necessary as
% sigmadeff, which is what causes the code to take a long time to run, is
% unaffected by the change.