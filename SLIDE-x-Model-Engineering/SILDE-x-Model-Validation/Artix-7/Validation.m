%% Initial Clean
clc
clear

%% Parameters
addpath('BRAM\')
load("BRAM\trainedModel.mat")
filepath = 'Artix-7_BRAM.csv';
T = readtable(filepath,'VariableNamingRule','preserve');

n = height(T);
m = width(T);

X_val = T(:,1:m-1);
y_val = T(:,m);

yReal = y_val{:,1}; % real values

%% Variables
timeTrain = [0 0 0 0 0 0 0 0 0];
timePrediction = [0 0 0 0 0 0 0 0 0];
validationRMSET = [0 0 0 0 0 0 0 0 0];

%% Parameters
i = 1;
%size_X_val = size(X_val);

%% Linear Regression
%tic
%[trainedModel_00_LR, validationRMSET(i)] = trainRegressionModel_00_LR(T);
%timeTrain(i) = toc;

tic
yfit = trainedModel_00_LR.predictFcn(X_val);  % predicted values
timePrediction(i) = toc; % /size_X_val(1);

[EV_00_LR, EVP_00_LR, NRV_00_LR] = errCalcFunc(yfit,yReal);
i = i+1;

%% Fine Tree
%tic
% [FineTreeModel, validationRMSET(i)] = trainRegressionModel_01_FT(X_train);
% timeTrain(i) = toc;

tic
yfit = trainedModel_01_FT.predictFcn(X_val);  % predicted values
timePrediction(i) = toc;

[EV_01_FT, EVP_01_FT, NRV_01_FT] = errCalcFunc(yfit,yReal);
i = i+1;

%% Medium Tree
%tic
% [MediumTreeModel, validationRMSET(i)] = trainRegressionModel_02_MT(X_train);
% timeTrain(i) = toc;

tic
yfit = trainedModel_02_MT.predictFcn(X_val);  % predicted values
timePrediction(i) = toc;

[EV_02_MT, EVP_02_MT, NRV_02_MT] = errCalcFunc(yfit,yReal);
i = i+1;

%% Coarse Tree
%tic
% [CoarseTreeModel, validationRMSET(i)] = trainRegressionModel_03_CT(X_train);
% timeTrain(i) = toc;

tic
yfit = trainedModel_03_CT.predictFcn(X_val);  % predicted values
timePrediction(i) = toc;

[EV_03_CT, EVP_03_CT, NRV_03_CT] = errCalcFunc(yfit,yReal);
i = i+1;

%% SVM Linear
%tic
% [LinearSVMModel, validationRMSET(i)] = trainRegressionModel_04_SVM_L(X_train);
% timeTrain(i) = toc;

tic
yfit = trainedModel_04_SVM_L.predictFcn(X_val);  % predicted values
timePrediction(i) = toc;

[EV_04_SVM_L, EVP_04_SVM_L, NRV_04_SVM_L] = errCalcFunc(yfit,yReal);
i = i+1;

%% SVM Quadratic
%tic
% [QuadraticSVMModel, validationRMSET(i)] = trainRegressionModel_05_SVM_Q(X_train);
% timeTrain(i) = toc;

tic
yfit = trainedModel_05_SVM_Q.predictFcn(X_val);  % predicted values
timePrediction(i) = toc;

[EV_05_SVM_Q, EVP_05_SVM_Q, NRV_05_SVM_Q] = errCalcFunc(yfit,yReal);
i = i+1;

%% SVM Cubic
%tic
% [CubicSVMModel, validationRMSET(i)] = trainRegressionModel_06_SVM_C(X_train);
% timeTrain(i) = toc;

tic
yfit = trainedModel_06_SVM_C.predictFcn(X_val);  % predicted values
timePrediction(i) = toc;

[EV_06_SVM_C, EVP_06_SVM_C, NRV_06_SVM_C] = errCalcFunc(yfit,yReal);
i = i+1;

%% BOT
%tic
% [BOTModel, validationRMSET(i)] = trainRegressionModel_07_BOT(X_train);
% timeTrain(i) = toc;

tic
yfit = trainedModel_07_BOT.predictFcn(X_val);  % predicted values
timePrediction(i) = toc;

[EV_07_BOT, EVP_07_BOT, NRV_07_BOT] = errCalcFunc(yfit,yReal);
i = i+1;

%% BAT
%tic
% [BOTModel, validationRMSET(i)] = trainRegressionModel_08_BAT(X_train);
% timeTrain(i) = toc;

tic
yfit = trainedModel_08_BAT.predictFcn(X_val);  % predicted values
timePrediction(i) = toc;

[EV_08_BAT, EVP_08_BAT, NRV_08_BAT] = errCalcFunc(yfit,yReal);
i = i+1;
