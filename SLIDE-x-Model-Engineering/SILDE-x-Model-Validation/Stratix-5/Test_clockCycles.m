%% Initial Clean
clc
clear

%% Parameters Area
Target = 'clockCycles\';
nameModel = "trainedModel.mat";
trainModelLoad = strcat(Target,nameModel);
load(trainModelLoad)

yReal = y_test{:,1}; % real values

%% Variables
timeTest = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
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
yfit = trainedModel_00_LR.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc; % /size_X_test(1);
i = i+1;

%% Fine Tree (FT) - Tree
tic
yfit = trainedModel_01_FT.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% Medium Tree (MT) - Tree
tic
yfit = trainedModel_02_MT.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% Coarse Tree (CT) - Tree
tic
yfit = trainedModel_03_CT.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% SVM Linear (SVM-L) - SVM
tic
yfit = trainedModel_04_SVM_L.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% SVM Quadratic (SVM-Q) - SVM
tic
yfit = trainedModel_05_SVM_Q.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% SVM Cubic (SVM-C) - SVM
tic
yfit = trainedModel_06_SVM_C.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% SVM Fine Gaussian (SVM-FG) - SVM
tic
yfit = trainedModel_07_SVM_FG.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% SVM Medium Gaussian (SVM-MG) - SVM
tic
yfit = trainedModel_08_SVM_MG.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% SVM Coarse Gaussian (SVM-CG) - SVM
tic
yfit = trainedModel_09_SVM_CG.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% SVM Kernel (SVM-K) - Kernel
tic
yfit = trainedModel_10_SVM_K.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% Least Squares Regression Kernel (LSRK) - Kernel
tic
yfit = trainedModel_11_LSRK.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% Boosted Trees (BOT) - Ensemble
tic
yfit = trainedModel_12_BOT.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% Bagged Trees (BAT) - Ensemble
tic
yfit = trainedModel_13_BAT.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% Narrow Neural Network (NNN) - Neural Network
tic
yfit = trainedModel_14_NNN.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% Medium Neural Network (MNN) - Neural Network
tic
yfit = trainedModel_15_MNN.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% Wide Neural Network (WNN) - Neural Network
tic
yfit = trainedModel_16_WNN.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% Bilayered Neural Network (BNN) - Neural Network
tic
yfit = trainedModel_17_BNN.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% Trilayered Neural Network (TNN) - Neural Network
tic
yfit = trainedModel_18_TNN.predictFcn(X_test);  % predicted values
[EV(:,i), EVPN(:,i)] = errCalcFunc(yfit,yReal);
timeTest(i) = toc;
i = i+1;

%% Save Error EV
NewColEV = ["RMSE";"MSE";"R2";"MAE";"MAPE";"RRMSE"];
EV = [NewColEV EV];

T = array2table(EV);
T.Properties.VariableNames(1:20) = {'Metrics','LR','FT','MT','CT','SVM-L', 'SVM-Q','SVM-C', ...
    'SVM-FG','SVM-MG','SVM-CG','SVM-K','SLRK','BOT','BAT','NNN','MNN','WNN','BNN','TNN'};

nameCSV = "EV.csv";
trainModelSave = strcat(Target,nameCSV);
writetable(T,trainModelSave);

%{
%% Save Error EVPN
NewColEVPN = ["MSPE";"MPE";"NRMSEAve";"NRMSEMaxMin";"NRMSESd";"NRMSEIQ"];
EVPN = [NewColEVPN EVPN];

T = array2table(EVPN);
T.Properties.VariableNames(1:20) = {'Metrics','LR','FT','MT','CT','SVM-L', 'SVM-Q','SVM-C', ...
    'SVM-FG','SVM-MG','SVM-CG','SVM-K','SLRK','BOT','BAT','NNN','MNN','WNN','BNN','TNN'};

nameCSVEVPN = "EVPN.csv";
trainModelSaveEVPN = strcat(Target,nameCSVEVPN);
writetable(T,trainModelSaveEVPN);
%}

%% Save Training Time
NewColEV = "TestTime";
timeTest = [NewColEV timeTest];

T = array2table(timeTest);
T.Properties.VariableNames(1:20) = {'Metrics','LR','FT','MT','CT','SVM-L', 'SVM-Q','SVM-C', ...
    'SVM-FG','SVM-MG','SVM-CG','SVM-K','SLRK','BOT','BAT','NNN','MNN','WNN','BNN','TNN'};

nameCSVTime = "timeTrain.csv";
trainModelSaveTime = strcat(Target,nameCSVTime);
writetable(T,trainModelSaveTime);





