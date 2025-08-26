% KNN_Classifier.m
% Attribute-Based KNN Image Classification
% Compatible with MATLAB R2019a and later (uses readmatrix)
% For older versions, use xlsread instead of readmatrix (see comments below)

%% Step 1: Load Dataset
disp('Loading dataset...');

% For MATLAB R2019a or later:
DataSet = readmatrix('features_dataset.xlsx'); 

% For older MATLAB versions, uncomment the line below and comment out readmatrix:
% DataSet = xlsread('features_dataset.xlsx');

%% Step 2: Randomly select test data (20 samples)
disp('Selecting testing data...');
testing = randperm(size(DataSet,1)); 
testingDataSet = DataSet(testing(1:20),:);

% Separate labels and features for testing
testingDataSetGroupNo = testingDataSet(:,1);
testingDataSetWithoutGroup = testingDataSet(:,2:end);

%% Step 3: Randomly select training data (200 samples)
disp('Selecting training data...');
training = randperm(size(DataSet,1)); 
trainingDataSet = DataSet(training(1:200),:);

% Separate labels and features for training
trainingDataSetGroupNo = trainingDataSet(:,1);
trainingDataSetWithoutGroup = trainingDataSet(:,2:end);

%% Step 4: Run KNN Algorithm
disp('Training and classifying using KNN...');
result = knnclassify(testingDataSetWithoutGroup, ...
                     trainingDataSetWithoutGroup, ...
                     trainingDataSetGroupNo, ...
                     1, 'Euclidean');

%% Step 5: Calculate Accuracy
accuracy = sum(testingDataSetGroupNo == result);
percentage = (accuracy/length(testingDataSetGroupNo))*100;
disp(['The result percentage is: ', num2str(percentage), '%']);

%% Step 6: Visualize Results
X = [accuracy length(testingDataSetGroupNo)-accuracy];
labels = {'Accuracy','Error rate'};
pie(X, labels);
title('KNN Classification Result');
