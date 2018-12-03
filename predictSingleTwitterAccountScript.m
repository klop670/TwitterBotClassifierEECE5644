%% Test Single Twitter Account
loadObj = true;
%Bots
%AnotherNikeBot
if loadObj == true
    load newMastTable.mat
    load featureRank.mat
    load 'twitterSVMClassifier.mat'
    load listLookupStruct
    load normFacts.mat
end
load verified100.mat


handle = input('Enter Twitter Handle: ', 's');
[Prediction, Score] = predictUserBotOrNot(handle ,newMastTable, ftRank, SVMModel, listLookupStruct, normFacts);

if Prediction == 0
    disp("Not a Bot")
else
    disp("Bot")
end