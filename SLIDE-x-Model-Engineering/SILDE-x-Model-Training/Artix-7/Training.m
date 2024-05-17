%% Initial Clean
clc
clear

%% Parameters (Area, BRAM, clockCycles, DSP, Flip_Flop, Max_Freq, min_Slack)
Target = 'BRAM\'
addpath('BRAM\')
filepath = 'Artix-7_BRAM.csv';
T = readtable(filepath,'VariableNamingRule','preserve');

n = height(T);
m = width(T);
c = cvpartition(n,'HoldOut',0.2); 
idxTrain = training(c,1);
idxTest = ~idxTrain;
X_train = T(idxTrain,:);
y_train = T(idxTrain,m);
X_test = T(idxTest,1:m-1);
y_test = T(idxTest,m);

% Cross-Validation

yReal = y_test{:,1}; % real values

%% Variables
timeTrain = [0 0 0 0 0 0 0 0 0];
validationRMSET = [0 0 0 0 0 0 0 0 0];

%% Parameters
i = 1;

%% Linear Regression
tic
[trainedModel_00_LR, validationRMSET(i)] = trainRegressionModel_00_LR(X_train);
timeTrain(i) = toc;

i = i+1;

%% Fine Tree
tic
[trainedModel_01_FT, validationRMSET(i)] = trainRegressionModel_01_FT(X_train);
timeTrain(i) = toc;

i = i+1;

%% Medium Tree
tic
[trainedModel_02_MT, validationRMSET(i)] = trainRegressionModel_02_MT(X_train);
timeTrain(i) = toc;

i = i+1;

%% Coarse Tree
tic
[trainedModel_03_CT, validationRMSET(i)] = trainRegressionModel_03_CT(X_train);
timeTrain(i) = toc;

i = i+1;

%% SVM Linear
tic
[trainedModel_04_SVM_L, validationRMSET(i)] = trainRegressionModel_04_SVM_L(X_train);
timeTrain(i) = toc;

i = i+1;

%% SVM Quadratic
tic
[trainedModel_05_SVM_Q, validationRMSET(i)] = trainRegressionModel_05_SVM_Q(X_train);
timeTrain(i) = toc;

i = i+1;

%% SVM Cubic
tic
[trainedModel_06_SVM_C, validationRMSET(i)] = trainRegressionModel_06_SVM_C(X_train);
timeTrain(i) = toc;

i = i+1;

%% BOT
tic
[trainedModel_07_BOT, validationRMSET(i)] = trainRegressionModel_07_BOT(X_train);
timeTrain(i) = toc;

i = i+1;

%% BAT
tic
[trainedModel_08_BAT, validationRMSET(i)] = trainRegressionModel_08_BAT(X_train);
timeTrain(i) = toc;

i = i+1;

nameTrain = "trainedModel.mat";
trainModelSave = strcat(Target,nameTrain)
save(trainModelSave,"trainedModel_00_LR", "trainedModel_01_FT", "trainedModel_02_MT", "trainedModel_03_CT", ...
    "trainedModel_04_SVM_L", "trainedModel_05_SVM_Q", "trainedModel_06_SVM_C", ...
    "trainedModel_07_BOT","trainedModel_08_BAT", "X_test", "y_test", ...
    "validationRMSET", "timeTrain")



