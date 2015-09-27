close all;
clear;
clc;
%%
N = load('nuna-power-trace.csv');
S = load('single-location-data.csv');
N = N(:,2);
S = S(:,2);
S = S(1: 4251);
x =  [1:4251]; 

%% Plot
figure('Position',[440 378 560 620/3]);
box on
hold on
h1 = plot (x , N , x , S);

xlabel('Time (Seconds)');
ylabel('Power (mW)');
set(h1,'linewidth', 2)
set(gca, 'fontsize', 20)
set(gca, 'xtick', [0 800 1600 2400 3200 4000 4800])
set(gca, 'xticklabel' , [0:10:60])

xlim([0 4300])

% first query
x1 = [130 130]; % the coordinates for the x axis
y1 = [0 3000]; % the coordinates for the y axis 
x2 = [200 200];
y2 = [0 3000];

plot(x1,y1, x2,y2, 'color','b' ,'linestyle' ,'-.', 'linestyle','-.', 'color','b')
str1 = '\leftarrow query';
t1 = text(200,2700,str1);
set(t1, 'fontSize', 16);
