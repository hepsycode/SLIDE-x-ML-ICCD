
inputResume=readtable('inputResume.csv');

inputName = inputResume(:,1);

folderDevRes = strcat('inputResumeVectorCSV');
[status, msg, msgID] = mkdir(folderDevRes)

% VECTOR

scalarColumn = 4;   % Vector Column

inputVector = inputResume(:,scalarColumn);
inputVector = table2array(inputVector);

% xmax = max(inputVector{:,1})

for i = 1:size(inputVector)
    M{i} = split(inputVector(i),"{");
    M{i} =  M{i}(2:end);
end


MNew = M(~cellfun(@isempty,M));

jj = size(MNew);

for j = 1:jj(2)
    x = MNew{1,j}(1,1);   
    MFinal{1,j} = zeros(28);
    MFinal{1,j} = split(x(1,1),[", "]);  
end

ii = size(MFinal);
maxPNGSize = 28;

for i = 1:ii(2)
    kkSize = size(MFinal{1,i}(:,1));
    for kk = 1:maxPNGSize
        if kk < kkSize(1) + 1
            xxx = str2double(MFinal{1,i}(kk,1));  
            a(i,kk) = xxx; 
            clearvars xxx; 
        else
            a(i,kk) = 0;
        end
    end
end

% Save CSV
a = [inputName num2cell(a)];

imageFileName = strcat(folderDevRes,'/Vector.csv');
imageFileName = char(imageFileName);
writetable(a,imageFileName,'WriteVariableNames',0);

clearvars f a zz textInput imageFileName;

