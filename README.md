# TwitterBotDetectMLClass

This repository contains all of the scripts, functions, data, and objects needed to create a binary twitter bot classifier. It is capable of accepting a twitter handle input and indicating the accounts bot status using the matlab twitter API

Dependencies:
libsvm (included)
SVM-RFE-CBR (included)
Datafeed Toolbox (must be installed seperately)


Thanks to:
Libsvm 
https://www.csie.ntu.edu.tw/~cjlin/libsvm/

SVM-RFE-CBR 
https://www.mathworks.com/matlabcentral/fileexchange/50701-feature-selection-with-svm-rfe

Bot or Not Repository (Cresci 2017)
https://botometer.iuni.iu.edu/data/datasets.html




If Executing Scripts sequuentially, change all loadObj variables in each script to false, and run in the following order:

1. stripNonEssTableVar.m  Accepts all the raw data from the Cresci Dataset and manually reduces unneeded variables
2. SVM_Implmentation.m   Accepts the manually reduced training dataset and applies RFE and builds a SVM classifier
3. predictSingleTwitterAccountScript.m   Accepts a twitter handle and the SVM classifier and outputs a bot or not prediction
4. (Optional) testSetSVMClassifier.m  Accepts a set of 100 verified twitter handles predicts their bot status and keeps track of the sum of their predicitions (anything larger than 1 represents error)
5. (optional) plotScatterPredictionsTrainSubset.m   Uses set of 2000 bot and 2000 genuine users from training data and determines misclassification and plots against number of favorites and followers

If not executing in order:

Switch all loadObj variables in each script to true and execute desired script
