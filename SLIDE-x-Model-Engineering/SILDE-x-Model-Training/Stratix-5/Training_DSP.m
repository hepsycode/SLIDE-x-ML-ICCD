%% Initial Clean
clc
clear

%% Parameters (Area, BRAM, clockCycles, DSP, Flip_Flop, Max_Freq, min_Slack)

%% clockCycles
Target = 'DSP\'
addpath('DSP\')
filepath = 'Stratix-V_DSP.csv';
T = readtable(filepath,'VariableNamingRule','preserve');

n = height(T);
m = width(T);
rng('default') % For reproducibility
c = cvpartition(n,'HoldOut',0.2); %  ,'Stratify',false
idxTrain = training(c,1);
idxTest = ~idxTrain;
X_train = T(idxTrain,:);
X_train_Predict = T(idxTrain,1:m-1);
y_train = T(idxTrain,m);
X_test = T(idxTest,1:m-1);
y_test = T(idxTest,m);

yReal = y_train{:,1}; % real values

%% Variables
timeTrain = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
EV = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
EVPN = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
validationRMSET = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

%% Parameters
i = 1;

%% Linear Regression (LR) - Linear
tic
[trainedModel_00_LR, validationRMSET(i)] = trainRegressionModel_00_LR(X_train);
yfit = trainedModel_00_LR.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc; % /size_X_test(1);
i = i+1;

%% Fine Tree (FT) - Tree
tic
[trainedModel_01_FT, validationRMSET(i)] = trainRegressionModel_01_FT(X_train);
yfit = trainedModel_01_FT.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% Medium Tree (MT) - Tree
tic
[trainedModel_02_MT, validationRMSET(i)] = trainRegressionModel_02_MT(X_train);
yfit = trainedModel_02_MT.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% Coarse Tree (CT) - Tree
tic
[trainedModel_03_CT, validationRMSET(i)] = trainRegressionModel_03_CT(X_train);
yfit = trainedModel_03_CT.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% SVM Linear (SVM-L) - SVM
tic
[trainedModel_04_SVM_L, validationRMSET(i)] = trainRegressionModel_04_SVM_L(X_train);
yfit = trainedModel_04_SVM_L.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% SVM Quadratic (SVM-Q) - SVM
tic
[trainedModel_05_SVM_Q, validationRMSET(i)] = trainRegressionModel_05_SVM_Q(X_train);
yfit = trainedModel_05_SVM_Q.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% SVM Cubic (SVM-C) - SVM
tic
[trainedModel_06_SVM_C, validationRMSET(i)] = trainRegressionModel_06_SVM_C(X_train);
yfit = trainedModel_06_SVM_C.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% SVM Fine Gaussian (SVM-FG) - SVM
tic
[trainedModel_07_SVM_FG, validationRMSET(i)] = trainRegressionModel_07_SVM_FG(X_train);
yfit = trainedModel_07_SVM_FG.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% SVM Medium Gaussian (SVM-MG) - SVM
tic
[trainedModel_08_SVM_MG, validationRMSET(i)] = trainRegressionModel_08_SVM_MG(X_train);
yfit = trainedModel_08_SVM_MG.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% SVM Coarse Gaussian (SVM-CG) - SVM
tic
[trainedModel_09_SVM_CG, validationRMSET(i)] = trainRegressionModel_09_SVM_CG(X_train);
yfit = trainedModel_09_SVM_CG.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% SVM Kernel (SVM-K) - Kernel
tic
[trainedModel_10_SVM_K, validationRMSET(i)] = trainRegressionModel_10_SVM_K(X_train);
yfit = trainedModel_10_SVM_K.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% Least Squares Regression Kernel (LSRK) - Kernel
tic
[trainedModel_11_LSRK, validationRMSET(i)] = trainRegressionModel_11_LSRK(X_train);
yfit = trainedModel_11_LSRK.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% Boosted Trees (BOT) - Ensemble
tic
[trainedModel_12_BOT, validationRMSET(i)] = trainRegressionModel_12_BOT(X_train);
yfit = trainedModel_12_BOT.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% Bagged Trees (BAT) - Ensemble
tic
[trainedModel_13_BAT, validationRMSET(i)] = trainRegressionModel_13_BAT(X_train);
yfit = trainedModel_13_BAT.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% Narrow Neural Network (NNN) - Neural Network
tic
[trainedModel_14_NNN, validationRMSET(i)] = trainRegressionModel_14_NNN(X_train);
yfit = trainedModel_14_NNN.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% Medium Neural Network (MNN) - Neural Network
tic
[trainedModel_15_MNN, validationRMSET(i)] = trainRegressionModel_15_MNN(X_train);
yfit = trainedModel_15_MNN.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% Wide Neural Network (WNN) - Neural Network
tic
[trainedModel_16_WNN, validationRMSET(i)] = trainRegressionModel_16_WNN(X_train);
yfit = trainedModel_16_WNN.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% Bilayered Neural Network (BNN) - Neural Network
tic
[trainedModel_17_BNN, validationRMSET(i)] = trainRegressionModel_17_BNN(X_train);
yfit = trainedModel_17_BNN.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% Trilayered Neural Network (TNN) - Neural Network
tic
[trainedModel_18_TNN, validationRMSET(i)] = trainRegressionModel_18_TNN(X_train);
yfit = trainedModel_18_TNN.predictFcn(X_train_Predict);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTrain(i) = toc;
i = i+1;

%% Save Model
nameTrain = "trainedModel.mat";
trainModelSave = strcat(Target,nameTrain)
save(trainModelSave,"trainedModel_00_LR", ...
    "trainedModel_01_FT", "trainedModel_02_MT", "trainedModel_03_CT", ...
    "trainedModel_04_SVM_L", "trainedModel_05_SVM_Q", "trainedModel_06_SVM_C", ...
    "trainedModel_07_SVM_FG", "trainedModel_08_SVM_MG", "trainedModel_09_SVM_CG", ...
    "trainedModel_10_SVM_K", "trainedModel_11_LSRK", ...
    "trainedModel_12_BOT", "trainedModel_13_BAT", ...
    "trainedModel_14_NNN", "trainedModel_15_MNN", "trainedModel_16_WNN", ...
    "trainedModel_17_BNN", "trainedModel_18_TNN", ...
    "X_test", "y_test", ...
    "validationRMSET", "timeTrain", ...
    "EV", "EVPN")

%% Save Error EV
NewColEV = ["RMSE";"MSE";"R2";"MAE";"MAPE";"RRMSE"];
EV = [NewColEV EV];

T = array2table(EV);
T.Properties.VariableNames(1:20) = {'Metrics','LR','FT','MT','CT','SVM-L', 'SVM-Q','SVM-C', ...
    'SVM-FG','SVM-MG','SVM-CG','SVM-K','SLRK','BOT','BAT','NNN','MNN','WNN','BNN','TNN'};

nameCSV = "EV.csv";
trainModelSave = strcat(Target,nameCSV);
writetable(T,trainModelSave);

%% Save Error EVPN
NewColEVPN = ["MSPE";"MPE";"NRMSEAve";"NRMSEMaxMin";"NRMSESd";"NRMSEIQ"];
EVPN = [NewColEVPN EVPN];

T = array2table(EVPN);
T.Properties.VariableNames(1:20) = {'Metrics','LR','FT','MT','CT','SVM-L', 'SVM-Q','SVM-C', ...
    'SVM-FG','SVM-MG','SVM-CG','SVM-K','SLRK','BOT','BAT','NNN','MNN','WNN','BNN','TNN'};

nameCSVEVPN = "EVPN.csv";
trainModelSaveEVPN = strcat(Target,nameCSVEVPN);
writetable(T,trainModelSaveEVPN);

%% Save Training Time
NewColEV = "TrainTime";
timeTrain = [NewColEV timeTrain];

T = array2table(timeTrain);
T.Properties.VariableNames(1:20) = {'Metrics','LR','FT','MT','CT','SVM-L', 'SVM-Q','SVM-C', ...
    'SVM-FG','SVM-MG','SVM-CG','SVM-K','SLRK','BOT','BAT','NNN','MNN','WNN','BNN','TNN'};

nameCSVTime = "timeTrain.csv";
trainModelSaveTime = strcat(Target,nameCSVTime);
writetable(T,trainModelSaveTime);