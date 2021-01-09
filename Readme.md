##Malsite-Deep

Malsite-Deep：Prediction of protein malonylation sites through deep learning and multi-information fusion based on NearMiss-2 strategy

###Malsite-Deep uses the following dependencies:

 * Python 3.6
 * numpy
 * scipy
 * scikit-learn
 * pandas
 * TensorFlow
 * keras
 
###Guiding principles:
**The dataset file contains five categories  datasets, which contain training dataset and independent test dataset.


**Feature extraction：

* PseAAC.py is the implementation of PseAAC.
* exchange_matrix.m and be_extract_feature are the implementation of BE.
* Bi_profile_bayes.m is the implementation of BPB.
* DPC.py is the implementation of implement DC.
* EBGW_DATA.m and EBGW.m are the implementation of EBGW.
* BLOSUM62.py is the implementation of BLOSUM62.
* EAAC.py is the implementation of EAAC.
* PWAA_Y1.m is the implementation of PWAA.

**NearMiss_2:
* NearMiss_2.py is the implementation of NearMiss_2.

**Classifier:
* AdaBoost.py is the implementation of Adaboost.
* CNN.py is the implementation of CNN.
* DNN.py is the implementation of DNN.
* GRU.py is the implementation of GRU.
* GRUD.py is the implementation of GRUD.
* GTB.py is the implementation of GTB.
* LightGBM.py is the implementation of LightGBM.
* LSTM.py is the implementation of LSTM.
* NB.py is the implementation of NB.
* RF.py is the implementation of RF.
* SVM.py is the implementation of SVM.
* XGBoost.py is the implementation of XGBoost.
