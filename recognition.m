%% Initialization
clear ; close all; clc

%% Setup the parameters you will use for this exercise
input_layer_size  = 400;  % 20x20 Input Images of Digits
hidden_layer_size = 25;   % 25 hidden units
num_labels = 10;          % 10 labels, from 1 to 10   
                          % (note that we have mapped "0" to label 10)
                          
%%Loading an image
vectorImage = imageTo20x20Gray('Five.jpg', 100, 0);

% Load the weights into variables Theta1 and Theta2
load('ex3weights.mat');

%%Displaying the image
%%displayData(vectorImage, :);

%%Making a predeiction
pred = predict(Theta1, Theta2, vectorImage);
fprintf('\nNeural Network Prediction: %d\n', pred, mod(pred, 10));