function [EV, EVP, NRV] = errCalcFunc(yfit2,yReal2)

    % isNotMissing = ~isnan(yfit) & ~isnan(yReal);
    
    yfit = (yfit2(:,1));
    yfit(isnan(yfit))=0;
    yReal = (yReal2(:,1));
    yReal(isnan(yReal))=0;

    % n = (yReal~=0):  % find indexes

    MAE = nansum(abs(( yfit - yReal ))) / numel(yReal);
    MSE = nansum(( yfit - yReal ).^2) / numel(yReal );
    RMSE = sqrt(nansum(( yfit - yReal ).^2) / numel(yReal ));

    MPE = nansum( (yfit - yReal) ./ ((yReal+(yReal==0)*eps)) )  / numel(yReal) .* 100;
    MAPE = nansum( abs( (yfit - yReal) ) ./ ((yReal+(yReal==0)*eps)) ) / numel(yReal) .* 100;
    MSPE = nansum( ( (yfit - yReal) ./ ((yReal+(yReal==0)*eps)) ).^2) / numel(yReal);
    RMSPE = sqrt(MSPE) .* 100;

    NRMSEAve = RMSE /( nanmean(yReal) );
    NRMSEMaxMin = RMSE /( max(yReal) - min(yReal) );
    NRMSESd = RMSE /( std(yReal) );
    NRMSEIQ = RMSE /( quantile(yReal,0.75) - quantile(yReal,0.25) );
    
    EV = [RMSE, MAE, MSE];
    EVP = [MAPE, RMSPE, MSPE, MPE];
    NRV = [NRMSEAve, NRMSEMaxMin, NRMSESd, NRMSEIQ];
    
end