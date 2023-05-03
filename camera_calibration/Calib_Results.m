% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1580.010205727601488 ; 1590.781533365054429 ];

%-- Principal point:
cc = [ 992.229731561172230 ; 736.821037456775002 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.098720532135877 ; -0.340099119043297 ; -0.001323028442198 ; 0.000503816967816 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 6.724526284629825 ; 6.772755626867491 ];

%-- Principal point uncertainty:
cc_error = [ 2.871781500776081 ; 3.025896883097222 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.006448962834268 ; 0.021104589134060 ; 0.000499379018766 ; 0.000598804403433 ; 0.000000000000000 ];

%-- Image size:
nx = 2000;
ny = 1500;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 10;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 2.171138e+00 ; 2.149867e+00 ; -7.760119e-02 ];
Tc_1  = [ -1.147439e+02 ; -7.636294e+01 ; 2.800203e+02 ];
omc_error_1 = [ 1.513067e-03 ; 1.636348e-03 ; 3.191131e-03 ];
Tc_error_1  = [ 5.128117e-01 ; 5.305901e-01 ; 1.199975e+00 ];

%-- Image #2:
omc_2 = [ 2.179870e+00 ; 2.175043e+00 ; -6.072715e-02 ];
Tc_2  = [ -1.016201e+02 ; -7.916757e+01 ; 2.402242e+02 ];
omc_error_2 = [ 1.393195e-03 ; 1.462920e-03 ; 2.993505e-03 ];
Tc_error_2  = [ 4.418804e-01 ; 4.557697e-01 ; 1.036906e+00 ];

%-- Image #3:
omc_3 = [ 1.953548e+00 ; 1.953220e+00 ; -4.974239e-01 ];
Tc_3  = [ -1.018854e+02 ; -9.117614e+01 ; 3.096270e+02 ];
omc_error_3 = [ 1.358104e-03 ; 1.697952e-03 ; 2.762069e-03 ];
Tc_error_3  = [ 5.580874e-01 ; 5.793581e-01 ; 1.238552e+00 ];

%-- Image #4:
omc_4 = [ -2.084249e+00 ; -2.093595e+00 ; 5.892072e-01 ];
Tc_4  = [ -9.081825e+01 ; -7.633321e+01 ; 3.408554e+02 ];
omc_error_4 = [ 1.629257e-03 ; 1.361377e-03 ; 3.372967e-03 ];
Tc_error_4  = [ 6.171828e-01 ; 6.327423e-01 ; 1.327404e+00 ];

%-- Image #5:
omc_5 = [ -2.069020e+00 ; -2.078452e+00 ; -2.758076e-01 ];
Tc_5  = [ -1.026549e+02 ; -5.049383e+01 ; 2.652115e+02 ];
omc_error_5 = [ 1.340788e-03 ; 1.683554e-03 ; 2.979005e-03 ];
Tc_error_5  = [ 4.871174e-01 ; 5.195708e-01 ; 1.167596e+00 ];

%-- Image #6:
omc_6 = [ 2.090933e+00 ; 2.081330e+00 ; -1.996573e-01 ];
Tc_6  = [ -6.738313e+01 ; -8.609462e+01 ; 4.141870e+02 ];
omc_error_6 = [ 2.056594e-03 ; 2.125293e-03 ; 4.146391e-03 ];
Tc_error_6  = [ 7.512265e-01 ; 7.713575e-01 ; 1.784664e+00 ];

%-- Image #7:
omc_7 = [ 2.361504e+00 ; 1.965064e+00 ; -5.214148e-01 ];
Tc_7  = [ -1.048717e+02 ; -5.261059e+01 ; 3.403552e+02 ];
omc_error_7 = [ 1.515953e-03 ; 1.525495e-03 ; 3.583628e-03 ];
Tc_error_7  = [ 6.113342e-01 ; 6.343560e-01 ; 1.382829e+00 ];

%-- Image #8:
omc_8 = [ 2.152147e+00 ; 2.138399e+00 ; -1.486852e-01 ];
Tc_8  = [ -9.684294e+01 ; -8.441407e+01 ; 2.973491e+02 ];
omc_error_8 = [ 1.523092e-03 ; 1.632097e-03 ; 3.213899e-03 ];
Tc_error_8  = [ 5.419125e-01 ; 5.552976e-01 ; 1.268506e+00 ];

%-- Image #9:
omc_9 = [ 2.151977e+00 ; 2.127721e+00 ; -1.295947e-01 ];
Tc_9  = [ -1.026699e+02 ; -8.495126e+01 ; 2.574776e+02 ];
omc_error_9 = [ 1.387917e-03 ; 1.529675e-03 ; 2.959705e-03 ];
Tc_error_9  = [ 4.718544e-01 ; 4.826426e-01 ; 1.106628e+00 ];

%-- Image #10:
omc_10 = [ 2.127196e+00 ; 2.105538e+00 ; -1.791273e-01 ];
Tc_10  = [ -1.007370e+02 ; -8.662490e+01 ; 3.392026e+02 ];
omc_error_10 = [ 1.678770e-03 ; 1.832807e-03 ; 3.487552e-03 ];
Tc_error_10  = [ 6.159454e-01 ; 6.321473e-01 ; 1.444555e+00 ];

