##### Feature Importance Code

import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import io
import time

from sklearn.model_selection import train_test_split
from sklearn.metrics import precision_score, recall_score, log_loss, accuracy_score, f1_score
from sklearn.ensemble import ExtraTreesRegressor
from sklearn.ensemble import GradientBoostingRegressor
from sklearn.ensemble import AdaBoostRegressor
from sklearn.ensemble import RandomForestRegressor

def feature_importances_histo(clf, file_name_path, file_name_generalScore, X_train, y_train=None,
                              top_n=10, figsize=(8, 8), print_table=False, title="Feature Importances"):
    __name__ = "feature_importances_histo"

    # try:
    if not hasattr(clf, 'feature_importances_'):
        clf.fit(X_train.values, y_train.values.ravel())

        if not hasattr(clf, 'feature_importances_'):
            raise AttributeError("{} does not have feature_importances_ attribute".
                                 format(clf.__class__.__name__))

    feat_imp = pd.DataFrame({title: clf.feature_importances_})
    feat_imp['feature'] = X_train.columns
    dfAllResults['feature'] = X_train.columns
    dfAllResults[title] = clf.feature_importances_
    feat_imp = feat_imp.iloc[:top_n]
    feat_imp.sort_values(by='feature', ascending=False, inplace=True)
    feat_imp = feat_imp.set_index('feature', drop=True)

    print("\n================  Feature Importance  ==============")
    print(title)
    print("____________________________________________________")
    print(feat_imp)
    print("----------------------------------------------------")

    feat_imp.plot.barh(title=title, figsize=figsize)
    plt.xlabel('Feature Importance Score')
    plt.rcParams.update({'font.size': 5})
    # plt.show()
    # plt.savefig(os.path.join(file_name_path, title + file_name_generalScore))

    if print_table:
        from IPython.display import display
        print("Top {} features in descending order of importance".format(top_n))
        display(feat_imp.sort_values(by='feature', ascending=False))

    return feat_imp
    
ESTIMATORS = 250

#from google.colab import files
#uploaded = files.upload()


# import required module
import os

# assign directory
directory = 'Dataset\csv\Train'
directory_Val = 'Dataset\csv\Val'
# filename = 'Artix-7.csv'

# iterate over files in that directory
for filename in os.listdir(directory): # INDENT
    f = os.path.join(directory, filename)
    fileTrainName = f.split('\\')
    # checking if it is a file
    if os.path.isfile(f):
        fileTrainNameNoFormat = fileTrainName[3].split('.')

        print("\n|------------------------------------|")
        print('\n' + fileTrainNameNoFormat[0] + '\n')
        print("|------------------------------------|\n")

    df = pd.read_csv(f, encoding = 'utf8', sep=',')
    # del df['Unnamed: 0']

    listHeader = list(df.columns.values)
    print(listHeader)
    print(listHeader[7:12])
    print(listHeader[49])
    y = df[["DSP", "BRAM", "Flip_Flop", "Area", "min_Slack", "Max_Freq","clockCycles"]]
    print(y)
    X = df.drop(['ID_VAL', 'DEVICE', 'BOARD', 'FUNCTION', 'DATA_TYPE', 'DSP', 'BRAM', 'Flip_Flop', 'Area', 'min_Slack', 'Max_Freq', 'Time', 'Energy', 'assemblyInstr', 'clockCycles', 'CC4CS'], axis=1)
    print(X)

    #temporary dataframe for results
    dfAllResults = pd.DataFrame()

    # X = df[listHeader].astype(float)

    for y_series_name, y_series in y.items():

        X_train, X_test, y_train, y_test = train_test_split(X, y_series, test_size=0.20, shuffle=False)

        ## Main Function

        clfs = [ExtraTreesRegressor(),
                GradientBoostingRegressor(learning_rate=0.1, n_estimators=ESTIMATORS),
                AdaBoostRegressor(learning_rate=0.1),
                RandomForestRegressor()
                ]

        print("\n|------------------------------------|")
        print('\n' + y_series_name + '\n')
        print("|------------------------------------|\n")

        file_name_path = 'FeatureImportRes\\generalScore\\'
        file_name_generalScore = fileTrainNameNoFormat[0] + y_series_name + '.png'

        for clf in clfs:
            try:
                _ = feature_importances_histo(clf, file_name_path, file_name_generalScore, X_train, y_train, top_n=X_train.shape[1], title=clf.__class__.__name__)
            except AttributeError as e:
                print(e)

        dfAllResults.set_index(['feature'], inplace=True)

        file_name_path = 'FeatureImportRes\\generalScore\\'
        file_name_generalScore = fileTrainNameNoFormat[0] + y_series_name + '.csv'
        dfAllResults.to_csv(os.path.join(file_name_path, file_name_generalScore), sep=',', encoding='utf-8', index=False)
        dfAllResults['sum'] = dfAllResults[dfAllResults.columns].sum(axis=1)
        dfAllResults['avg'] = dfAllResults['sum']/(len(dfAllResults.columns) - 1)
        file_name_path = 'FeatureImportRes\\allCLFscore\\'
        file_name = fileTrainNameNoFormat[0] + y_series_name + '.csv'
        dfAllResults.to_csv(os.path.join(file_name_path, file_name), sep='\t', encoding='utf-8')
        #files.download(file_name)

        print(dfAllResults)

        dfavg = dfAllResults[['avg']]
        file_name_path = 'FeatureImportRes\\scoreMean\\'
        file_name = fileTrainNameNoFormat[0] + y_series_name + '.csv'
        dfavg.to_csv(os.path.join(file_name_path, file_name), sep='\t', encoding='utf-8')
        #files.download(file_name)

        dfavg.plot.barh(title='Feature Importance Mean Score',logx=True, figsize=(8, 8))
        plt.xlabel('Feature Importance Mean Score')
        plt.xscale('log')
        plt.axvline(x=0.001)
        plt.rcParams.update({'font.size': 5})
        # plt.show()
        file_name_png = 'Mean' + fileTrainNameNoFormat[0] + y_series_name + '.png'
        # plt.savefig(os.path.join(file_name_path, file_name_png), format='png')

        print("\n=============   Feature Importance Mean Score   =============")
        print(dfavg)
        dfpruned = dfavg[~(dfavg['avg'] < 0.05)]
        print("\n=============   Feature Pruned by Score   =============")
        print(dfpruned)
        file_name_dataset_train_test_pruned = 'DatasetReduced/Pruned/' + fileTrainNameNoFormat[0] + '_' + y_series_name + '.csv' 
        dfpruned.to_csv(file_name_dataset_train_test_pruned, encoding='utf-8')

        df_pruned = pd.read_csv(file_name_dataset_train_test_pruned, encoding='utf-8')
        columnPruned = df_pruned[df_pruned.columns[0]].to_numpy()
        list_Pruned = columnPruned.tolist()
        print(list_Pruned)

        dfavg.plot.barh(title='Feature Importance Mean Score',logx=True, figsize=(8, 8))
        plt.xscale('log')
        plt.axvline(x=0.001, color='r', linestyle='--')
        plt.rcParams.update({'font.size': 5})
        # plt.show()
        file_name_png = 'MeanRed' + fileTrainNameNoFormat[0] + y_series_name + '.png'
        # plt.savefig(os.path.join(file_name_path, file_name_png), format='png')

        # remove features from df and save dataset file
        file_name_dataset_train = 'DatasetReduced/Train/' + fileTrainNameNoFormat[0] + '_' + y_series_name + '.csv' 
        df_X_train = pd.DataFrame(X_train)
        # df_X_train = df_X_train_1.drop(list_Pruned)
        # df_X_train.loc[:,~df_X_train.columns.str.contains('|'.join(list_Pruned))]
        for itemColTrain in list_Pruned:
            df_X_train = df_X_train.drop(str(itemColTrain), axis=1)       
        df_y_train = pd.DataFrame(y_train)
        df_final_train = pd.concat([df_X_train, df_y_train], axis=1)
        df_final_train.to_csv(file_name_dataset_train)

        file_name_dataset_test = 'DatasetReduced/Test/' + fileTrainNameNoFormat[0] + '_' + y_series_name + '.csv'
        df_X_test = pd.DataFrame(X_test)
        # df_X_test = df_X_test_1.drop(list_Pruned)
        # df_X_test.loc[:,~df_X_test.columns.str.contains('|'.join(list_Pruned))]
        for itemColTest in list_Pruned:
            df_X_test = df_X_test.drop(str(itemColTest), axis=1) 
        df_y_test = pd.DataFrame(y_test)
        df_final_test = pd.concat([df_X_test, df_y_test], axis=1)
        df_final_test.to_csv(file_name_dataset_test)

        # if os.path.exists(file_name_dataset_train_test_pruned):
        #     os.remove(file_name_dataset_train_test_pruned)
        # else:
        #     print(file_name_dataset_train_test_pruned)
            
        # FINAL TOTAL
        file_name_dataset_total = 'DatasetReduced/Total/' + fileTrainNameNoFormat[0] + '_' + y_series_name + '.csv'
        resultTotal = pd.concat([df_final_train, df_final_test], axis=0)
        resultTotal.to_csv(file_name_dataset_total)