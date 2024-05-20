function [EV, EVPN] = errCalcFunc(yfit2,yReal2)

    % isNotMissing = ~isnan(yfit) & ~isnan(yReal);
    
    yfit = (yfit2(:,1));
    yfit(isnan(yfit))=0;
    yReal = (yReal2(:,1));
    yReal(isnan(yReal))=0;

    kNonZeros = find(yReal);

    % n = (yReal~=0):  % find indexes
    % (yReal+(yReal==0)*eps)

    RMSE = sqrt(nansum(( yfit - yReal ).^2) / numel(yReal ));
    MSE = nansum(( yfit - yReal ).^2) / numel(yReal );

    MAE = nansum(abs(( yfit - yReal ))) / numel(yReal);
    MPE = nansum( (yfit(kNonZeros) - yReal(kNonZeros)) ./ (yReal(kNonZeros)) )  / numel(yReal) .* 100;

    R2_den = nansum( ( (yReal - nanmean(yReal)) ).^2);
    R2 = 1 - nansum( ( (yReal - yfit) ).^2) ./ (R2_den+(R2_den==0)*eps);

    MAPE = nansum( abs( (yfit(kNonZeros) - yReal(kNonZeros)) ) ./ (yReal(kNonZeros)) ) / numel(yReal(kNonZeros)) .* 100;
    MSPE = nansum( ( (yfit(kNonZeros) - yReal(kNonZeros)) ./ (yReal(kNonZeros)) ).^2) / numel(yReal(kNonZeros));
    RMSPE = sqrt(MSPE) .* 100; % Relative RMSE

    NRMSEAve = RMSE /( nanmean(yReal) ) .* 100;
    NRMSEMaxMin = RMSE /( max(yReal) - min(yReal) ) .* 100;
    NRMSESd = RMSE /( std(yReal) ) .* 100;
    NRMSEIQ = RMSE /( quantile(yReal,0.75) - quantile(yReal,0.25) ) .* 100;
    
    EV = [RMSE, MSE, R2, MAE, MAPE, RMSPE];
    EVPN = [MSPE, MPE, NRMSEAve, NRMSEMaxMin, NRMSESd, NRMSEIQ];
    
end