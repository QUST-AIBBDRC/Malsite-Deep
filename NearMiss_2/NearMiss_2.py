import numpy as np
import pandas as pd
#import imbalanced_learn as imblearn
#from imblearn.ensemble import EasyEnsemble
from sklearn.preprocessing import scale,StandardScaler 
from imblearn.over_sampling import ADASYN
from imblearn.under_sampling import OneSidedSelection
from imblearn.under_sampling import NearMiss
from imblearn.under_sampling import TomekLinks
from imblearn.under_sampling import RandomUnderSampler
from sklearn.linear_model import LogisticRegression
from imblearn.under_sampling import InstanceHardnessThreshold
from imblearn.under_sampling import ClusterCentroids
from imblearn.under_sampling import OneSidedSelection
from imblearn.under_sampling import CondensedNearestNeighbour
from imblearn.under_sampling import EditedNearestNeighbours
from imblearn.under_sampling import RepeatedEditedNearestNeighbours
from imblearn.under_sampling import AllKNN
from imblearn.under_sampling import NeighbourhoodCleaningRule
from imblearn.ensemble import BalanceCascade,EasyEnsemble 
from imblearn.combine import SMOTEENN,SMOTETomek 
from imblearn.over_sampling import ADASYN, RandomOverSampler,SMOTE 
#from imblearn.ensemble import BalanceCascade,EasyEnsemble 
from sklearn.preprocessing import scale,StandardScaler 
from sklearn.ensemble import GradientBoostingClassifier
from sklearn.metrics import roc_curve, auc
from sklearn.model_selection import StratifiedKFold
import utils.tools as utils
import matplotlib.pyplot as plt
from imblearn.over_sampling import BorderlineSMOTE
from imblearn.over_sampling import ADASYN
from imblearn.over_sampling import SMOTENC
from imblearn.over_sampling import SVMSMOTE
#from imblearn.over_sampling import KMeansSMOTE


data_=pd.read_csv(r'train.csv')
data1=np.array(data_)
data=data1[:,1:]
[m1,n1]=np.shape(data)
label1=np.ones((4242,1))#Value can be changed   int(m1/2)
label2=np.zeros((71809,1))
label=np.append(label1,label2)
shu=scale(data)

X=shu
y=label#.astype('int64')

nm1 = NearMiss(version=2)#version=2,version=3
X_resampled, y_resampled = nm1.fit_sample(X, y)

shu=X_resampled
X1=scale(shu)
y1=y_resampled

#shu2 =X_resampled
#shu3 =y_resampled
data_csv = pd.DataFrame(data=X1)
data_csv.to_csv('NearMiss_train.csv')
data_csv = pd.DataFrame(data=y1)
data_csv.to_csv('label_NearMiss_train.csv')