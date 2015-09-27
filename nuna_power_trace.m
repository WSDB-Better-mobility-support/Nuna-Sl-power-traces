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
ftSz = 20;
%% Plot
figure('Position',[440 378 560 620/3]);
box on
hold on
h1 = plot (x , N , x , S);
leg = legend('Nuna','Single-location');
set(leg, 'fontSize', (ftSz-4))
xlabel('Time (seconds)');
ylabel('Power (mW)');
set(h1,'linewidth', 2)
set(gca, 'fontsize', ftSz)
set(gca, 'xtick', [0 800 1600 2400 3200 4000 4800])
set(gca, 'xticklabel' , [0:10:60])

xlim([0 4000])

% first query
x1 = [100 100]; % the coordinates for the x axis
y1 = [0 3000]; % the coordinates for the y axis 
x2 = [200 200];
y2 = [0 3000];

plot(x1,y1, x2,y2, 'color','b' ,'linestyle' ,'-.', 'linestyle','-.', 'color','b')
str1 = 'q';
t1 = text(100,200,str1);
set(t1, 'fontSize', (ftSz-8));

% Second query
x1 = [3900 3900]; % the coordinates for the x axis
y1 = [0 3000]; % the coordinates for the y axis 
x2 = [4000 4000];
y2 = [0 3000];

plot(x1,y1, x2,y2, 'color','b' ,'linestyle' ,'-.', 'linestyle','-.', 'color','b')
str1 = 'q';
t1 = text(3950 ,200,str1);
set(t1, 'fontSize', (ftSz-8));

% first query
for x=100:500:4000
    sx1 = [(110+x) (110+x)]; % the coordinates for the x axis
    sy1 = [0 3000]; % the coordinates for the y axis 
    sx2 = [(210+x) (210+x)];
    sy2 = [0 3000];

    plot(sx1,sy1, sx2,sy2, 'color','r' ,'linestyle' ,'--', 'linestyle','--', 'color','r')
    str1 = 'q';
    t1 = text((130+x),200,str1);
    set(t1, 'fontSize', (ftSz-8));
end