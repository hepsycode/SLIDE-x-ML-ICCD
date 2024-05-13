
inputResume=readtable('inputResume.csv');

inputName = inputResume(:,1);

folderDevRes = strcat('inputResumeScalarCSV');
[status, msg, msgID] = mkdir(folderDevRes)

% SCALAR
scalarColumn = 3;  % Scalar Variable

inputScalarValue = inputResume(:,scalarColumn);
inputScalarValue = [inputName inputScalarValue];

imageFileName = strcat(folderDevRes,'/ScalarVariable.csv');
imageFileName = char(imageFileName);
writetable(inputScalarValue,imageFileName,'WriteVariableNames',0);


% VECTOR OR MATRIX SIZE
sizeColumn = 2;   % Array/Matrix Size

inputScalarValue = inputResume(:,sizeColumn);
inputScalarValue = [inputName inputScalarValue];

imageFileName = strcat(folderDevRes,'/ScalarSize.csv');
imageFileName = char(imageFileName);
writetable(inputScalarValue,imageFileName,'WriteVariableNames',0);