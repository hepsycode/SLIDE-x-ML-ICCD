
inputResume=readtable('inputResume.csv');

inputName = inputResume(:,1);
inputSizeMatrix = inputResume(:,2);

sizeM = 3;
columnDataM = 3;

inputScalar = inputResume(:,sizeM);
inputMatrix = inputResume(:,columnDataM);
inputMatrix = table2array(inputMatrix);

xmax = max(inputSizeMatrix{:,1})

for i = 1:size(inputMatrix)
    M{i} = split(inputMatrix(i),["[[","],[","]]"]);
end

MNew = M(~cellfun(@isempty,M));

jj = size(MNew);

for j = 1:jj(2)
    zz = size(MNew{1,j});
    for z = 1:zz(1)-1
        if z > 1 % & z < zz(1)
            x = MNew{1,j}(:,1);   
            %xxx = split(x(z,1),[", "]); 
            %xxx = str2double(xxx);
            MFinal{z-1,j} = zeros(28);
            MFinal{z-1,j} = split(x(z,1),[", "]);  
            % clearvars Mtemp;
        %else 
            %temp = zeros(256);
            %MFinal{z,j} = temp;
        end    
    end
end

ii = size(MFinal);

folderDevRes = strcat('inputResumeMatrixCSV');
[status, msg, msgID] = mkdir(folderDevRes)

maxPNGSize = 28;

for i = 1:ii(2)
    % zz = size(MFinal{1,i}(:,1));  % 25
    N_nonempty = find(~cellfun(@isempty,MFinal(:,i)));
    zz = size(N_nonempty);
    for j = 1:maxPNGSize % ii(1)
        % zz = size(MFinal{:,i}(:,1));  % 25
        kkSize = size(MFinal{1,i}(:,1));  % 25
        for kk = 1:maxPNGSize
            if kk < kkSize(1) + 1
                if j < zz(1) + 1     
                    % str2double(MFinal{j,i}(:,1));
                    xxx = str2double(MFinal{j,i}(kk,1));  % MFinal{j,i}(:,1)
                    %ppp = zeros(256);
                    % ppp = xxx % (:,1); % str2double(MFinal{j,i}(:,1));
                    % a(j,:) = zeros(maxPNGSize);
                    a(j,kk) = xxx;  % a(j,:) = ppp(:,1)';
                    clearvars xxx;  % ppp
                % else
                %    a(j,:) = zeros(zz);
                end
            else
                a(j,kk) = 0;
            end 
        end
    end
    
    % Save CSV
    textInput = string(inputName{i,1})
    imageFileName = strcat(folderDevRes,'/',textInput,'.csv');
    imageFileName = char(imageFileName);
    writematrix(a,imageFileName);
    
    clearvars f a zz textInput imageFileName;

    %{
    % Save IMG PNG
    f = figure('visible','off');
    
    cmap = gray(256);
    % Set one gray level, 8, to red.
    % Remember, row #1 is 0 gray levels.
    % so row #9 is 8 gray levels.
    % cmap(9,:) = [1,0,0];
    colormap(cmap); % Apply the custom colormap.
    % colorbar;
    
    % imagesc(a);

    textInput = string(inputName{i,1})
    imageFileName = strcat(folderDevRes,'/',textInput,'.csv');
    imageFileName = char(imageFileName);
    
    % writematrix(a,imageFileName);
   
    saveas(f,imageFileName);
   
    clearvars f a zz textInput imageFileName;
    %}
end
