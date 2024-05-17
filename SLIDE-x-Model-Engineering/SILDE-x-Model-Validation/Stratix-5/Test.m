%% Initial Clean
clc
clear

%% Parameters Area
load("Area\trainedModel.mat")

yReal = y_test{:,1}; % real values

%% Variables
timePrediction = [0 0 0 0 0 0 0 0 0];

%% Parameters
i = 1;
%size_X_test = size(X_test);

%% Linear Regression
tic
yfit = trainedModel_00_LR.predictFcn(X_test);  % predicted values
timePrediction(i) = toc; % /size_X_test(1);

[EV_00_LR, EVP_00_LR, NRV_00_LR] = errCalcFunc(yfit,yReal);
i = i+1;

%% Fine Tree
tic
yfit = trainedModel_01_FT.predictFcn(X_test);  % predicted values
timePrediction(i) = toc;

[EV_01_FT, EVP_01_FT, NRV_01_FT] = errCalcFunc(yfit,yReal);
i = i+1;

%% Medium Tree
tic
yfit = trainedModel_02_MT.predictFcn(X_test);  % predicted values
timePrediction(i) = toc;

[EV_02_MT, EVP_02_MT, NRV_02_MT] = errCalcFunc(yfit,yReal);
i = i+1;

%% Coarse Tree
tic
yfit = trainedModel_03_CT.predictFcn(X_test);  % predicted values
timePrediction(i) = toc;

[EV_03_CT, EVP_03_CT, NRV_03_CT] = errCalcFunc(yfit,yReal);
i = i+1;

%% SVM Linear
tic
yfit = trainedModel_04_SVM_L.predictFcn(X_test);  % predicted values
timePrediction(i) = toc;

[EV_04_SVM_L, EVP_04_SVM_L, NRV_04_SVM_L] = errCalcFunc(yfit,yReal);
i = i+1;

%% SVM Quadratic
tic
yfit = trainedModel_05_SVM_Q.predictFcn(X_test);  % predicted values
timePrediction(i) = toc;

[EV_05_SVM_Q, EVP_05_SVM_Q, NRV_05_SVM_Q] = errCalcFunc(yfit,yReal);
i = i+1;

%% SVM Cubic
tic
yfit = trainedModel_06_SVM_C.predictFcn(X_test);  % predicted values
timePrediction(i) = toc;

[EV_06_SVM_C, EVP_06_SVM_C, NRV_06_SVM_C] = errCalcFunc(yfit,yReal);
i = i+1;

%% BOT
tic
yfit = trainedModel_07_BOT.predictFcn(X_test);  % predicted values
timePrediction(i) = toc;

[EV_07_BOT, EVP_07_BOT, NRV_07_BOT] = errCalcFunc(yfit,yReal);
i = i+1;

%% BAT
tic
yfit = trainedModel_08_BAT.predictFcn(X_test);  % predicted values
timePrediction(i) = toc;

[EV_08_BAT, EVP_08_BAT, NRV_08_BAT] = errCalcFunc(yfit,yReal);
i = i+1;





