
inputResume=readtable('inputResume.csv');

inputName = inputResume(:,1);
inputSizeMatrix = inputResume(:,2);

sizeM = 2;  % ScalarSize

% Scalar Index

inputScalarValue = inputResume(:,sizeM);
inputScalarValue = [inputName inputScalarValue];

folderDevRes = strcat('inputResumeScalarCSV');
[status, msg, msgID] = mkdir(folderDevRes)

imageFileName = strcat(folderDevRes,'/ScalarIndex.csv');
imageFileName = char(imageFileName);
writetable(inputScalarValue,imageFileName,'WriteVariableNames',0);

sizeVar = 3;  % ScalarSize

% Scalar Variable

inputScalarValue = inputResume(:,sizeVar);
inputScalarValue = [inputName inputScalarValue];

folderDevRes = strcat('inputResumeScalarCSV');
[status, msg, msgID] = mkdir(folderDevRes)

imageFileName = strcat(folderDevRes,'/ScalarVariable.csv');
imageFileName = char(imageFileName);
writetable(inputScalarValue,imageFileName,'WriteVariableNames',0);

