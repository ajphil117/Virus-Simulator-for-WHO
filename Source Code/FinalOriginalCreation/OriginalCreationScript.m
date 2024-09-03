%% The Merge Version 2

%% Configurable variables
startingInfectionProbability = 0.1;

%% Juds Masking
image = imread('NileRiver.jpg');
imageR = image(:,:,1);
imageG = image(:,:,2);
imageB = image(:,:,3);
[Rows,Columns,dim] = size(image);

% All the important values to make troubleshooting / calibration easier.

% Tolerance
t = 17;
% Blue tolerance (Needs to be smaller due to the lower "spread" of blue.
bt = 12;
%

%_______________________________________________________________________

% Pre-Everything Goal: Set up legend
legend_1 = imread('legend.jpg');
% Legend Details are as follows: la   (meaning legend a), lb, lc, ...

l1 = legend_1(74,24,:);
l2 = legend_1(88,24,:);
l3 = legend_1(74,84,:);
l4 = legend_1(88,84,:);
l5 = legend_1(74,144,:);
l6 = legend_1(88,144,:);
l7 = legend_1(74,204,:);
l8 = legend_1(88,204,:);
l9 = legend_1(74,264,:);
l10 = legend_1(88,264,:);
l11 = legend_1(74,324,:);
l12 = legend_1(88,324,:);
l13 = legend_1(74,384,:);
l14 = legend_1(88,384,:);
l15 = legend_1(74,448,:);
l16 = legend_1(88,448,:);



% Goal 1: Split to component colours
l1r = l1(1,1,1);
l1g = l1(1,1,2);
l1b = l1(1,1,3);

l2r = l2(1,1,1);
l2g = l2(1,1,2);
l2b = l2(1,1,3);

l3r = l3(1,1,1);
l3g = l3(1,1,2);
l3b = l3(1,1,3);

l4r = l4(1,1,1);
l4g = l4(1,1,2);
l4b = l4(1,1,3);

l5r = l5(1,1,1);
l5g = l5(1,1,2);
l5b = l5(1,1,3);

l6r = l6(1,1,1);
l6g = l6(1,1,2);
l6b = l6(1,1,3);

l7r = l7(1,1,1);
l7g = l7(1,1,2);
l7b = l7(1,1,3);

l8r = l8(1,1,1);
l8g = l8(1,1,2);
l8b = l8(1,1,3);

l9r = l9(1,1,1);
l9g = l9(1,1,2);
l9b = l9(1,1,3);

l10r = l10(1,1,1);
l10g = l10(1,1,2);
l10b = l10(1,1,3);

l11r = l11(1,1,1);
l11g = l11(1,1,2);
l11b = l11(1,1,3);

l12r = l12(1,1,1);
l12g = l12(1,1,2);
l12b = l12(1,1,3);

l13r = l13(1,1,1);
l13g = l13(1,1,2);
l13b = l13(1,1,3);

l14r = l14(1,1,1);
l14g = l14(1,1,2);
l14b = l14(1,1,3);

l15r = l15(1,1,1);
l15g = l15(1,1,2);
l15b = l15(1,1,3);

l16r = l16(1,1,1);
l16g = l16(1,1,2);
l16b = l16(1,1,3);
    
% Goal 2: Automasker
    % Red Mask
for x = 1:Rows
    for y = 1:Columns
        if imageR(x,y) >= l1r-t && imageR(x,y) <= l1r+t
            imageR(x,y) = l1r;
        elseif imageR(x,y) >= l2r-t && imageR(x,y) <= l2r+t
            imageR(x,y) = l2r;
        elseif imageR(x,y) >= l3r-t && imageR(x,y) <= l3r+t
            imageR(x,y) = l3r;
        elseif imageR(x,y) >= l4r-t && imageR(x,y) <= l4r+t
            imageR(x,y) = l4r;
        elseif imageR(x,y) >= l5r-t && imageR(x,y) <= l5r+t
            imageR(x,y) = l5r;
        elseif imageR(x,y) >= l6r-t && imageR(x,y) <= l6r+t
            imageR(x,y) = l6r;
        elseif imageR(x,y) >= l7r-t && imageR(x,y) <= l7r+t
            imageR(x,y) = l7r;
        elseif imageR(x,y) >= l8r-t && imageR(x,y) <= l8r+t
            imageR(x,y) = l8r;
        elseif imageR(x,y) >= l9r-t && imageR(x,y) <= l9r+t
            imageR(x,y) = l9r;
        elseif imageR(x,y) >= l10r-t && imageR(x,y) <= l10r+t
            imageR(x,y) = l10r;
        elseif imageR(x,y) >= l11r-t && imageR(x,y) <= l11r+t
            imageR(x,y) = l11r;
        elseif imageR(x,y) >= l12r-t && imageR(x,y) <= l12r+t
            imageR(x,y) = l12r;
        elseif imageR(x,y) >= l13r-t && imageR(x,y) <= l13r+t
            imageR(x,y) = l13r;
        elseif imageR(x,y) >= l14r-t && imageR(x,y) <= l14r+t
            imageR(x,y) = l14r;
        elseif imageR(x,y) >= l15r-t && imageR(x,y) <= l15r+t
            imageR(x,y) = l15r;
        elseif imageR(x,y) >= l16r-t && imageR(x,y) <= l16r+t
            imageR(x,y) = l16r;
        else 
            imageR(x,y) = 0;
        end
    end
end

% Green Mask

for x = 1:Rows
    for y = 1:Columns
        if imageG(x,y) >= l1g-t && imageG(x,y) <= l1g+t
            imageG(x,y) = l1g;
        elseif imageG(x,y) >= l2g-t && imageG(x,y) <= l2g+t
            imageG(x,y) = l2g;
        elseif imageG(x,y) >= l3g-t && imageG(x,y) <= l3g+t
            imageG(x,y) = l3g;
        elseif imageG(x,y) >= l4g-t && imageG(x,y) <= l4g+t
            imageG(x,y) = l4g;
        elseif imageG(x,y) >= l5g-t && imageG(x,y) <= l5g+t
            imageG(x,y) = l5g;
        elseif imageG(x,y) >= l6g-t && imageG(x,y) <= l6g+t
            imageG(x,y) = l6g;
        elseif imageG(x,y) >= l7g-t && imageG(x,y) <= l7g+t
            imageG(x,y) = l7g;
        elseif imageG(x,y) >= l8g-t && imageG(x,y) <= l8g+t
            imageG(x,y) = l8g;
        elseif imageG(x,y) >= l9g-t && imageG(x,y) <= l9g+t
            imageG(x,y) = l9g;
        elseif imageG(x,y) >= l10g-t && imageG(x,y) <= l10g+t
            imageG(x,y) = l10g;
        elseif imageG(x,y) >= l11g-t && imageG(x,y) <= l11g+t
            imageG(x,y) = l11g;
        elseif imageG(x,y) >= l12g-t && imageG(x,y) <= l12g+t
            imageG(x,y) = l12g;
        elseif imageG(x,y) >= l13g-t && imageG(x,y) <= l13g+t
            imageG(x,y) = l13g;
        elseif imageG(x,y) >= l14g-t && imageG(x,y) <= l14g+t
            imageG(x,y) = l14g;
        elseif imageG(x,y) >= l15g-t && imageG(x,y) <= l15g+t
            imageG(x,y) = l15g;
        elseif imageG(x,y) >= l16g-t && imageG(x,y) <= l16g+t
            imageG(x,y) = l16g;
        else 
            imageG(x,y) = 0;
        end
    end
end
    
% Blue Mask

for x = 1:Rows
    for y = 1:Columns
        if imageB(x,y) >= l1b-bt && imageB(x,y) <= l1b+bt
            imageB(x,y) = l1b;
        elseif imageB(x,y) >= l2b-bt && imageB(x,y) <= l2b+bt
            imageB(x,y) = l2b;
        elseif imageB(x,y) >= l3b-bt && imageB(x,y) <= l3b+bt
            imageB(x,y) = l3b;
        elseif imageB(x,y) >= l4b-bt && imageB(x,y) <= l4b+bt
            imageB(x,y) = l4b;
        elseif imageB(x,y) >= l5b-bt && imageB(x,y) <= l5b+bt
            imageB(x,y) = l5b;
        elseif imageB(x,y) >= l6b-bt && imageB(x,y) <= l6b+bt
            imageB(x,y) = l6b;
        elseif imageB(x,y) >= l7b-bt && imageB(x,y) <= l7b+bt
            imageB(x,y) = l7b;
        elseif imageB(x,y) >= l8b-bt && imageB(x,y) <= l8b+bt
            imageB(x,y) = l8b;
        elseif imageB(x,y) >= l9b-bt && imageB(x,y) <= l9b+bt
            imageB(x,y) = l9b;
        elseif imageB(x,y) >= l10b-bt && imageB(x,y) <= l10b+bt
            imageB(x,y) = l10b;
        elseif imageB(x,y) >= l11b-bt && imageB(x,y) <= l11b+bt
            imageB(x,y) = l11b;
        elseif imageB(x,y) >= l12b-bt && imageB(x,y) <= l12b+bt
            imageB(x,y) = l12b;
        elseif imageB(x,y) >= l13b-bt && imageB(x,y) <= l13b+bt
            imageB(x,y) = l13b;
        elseif imageB(x,y) >= l14b-bt && imageB(x,y) <= l14b+bt
            imageB(x,y) = l14b;
        elseif imageB(x,y) >= l15b-bt && imageB(x,y) <= l15b+bt
            imageB(x,y) = l15b;
        elseif imageB(x,y) >= l16b-bt && imageB(x,y) <= l16b+bt
            imageB(x,y) = l16b;
        else
            imageB(x,y) = 0;
        end
    end
end

in = zeros(Rows,Columns,dim);
image_rgbtolerated = uint8(in);
image_rgbtolerated(:,:,1) = imageR;
image_rgbtolerated(:,:,2) = imageG;
image_rgbtolerated(:,:,3) = imageB;

% Clarity Remask (Changing Lighter Colour to be Lower Population)

grey = rgb2gray(image_rgbtolerated);
grey2 = rgb2gray(legend_1);


grey(grey >= 240) = 240;
grey(grey >= 226 & grey <= 239) = 225;
grey(grey >= 200 & grey <= 225) = 210;
grey(grey >= 172 & grey <= 185) = 195;
grey(grey >= 120 & grey <= 129) = 180;
grey(grey >= 86 & grey <= 119) = 165;
grey(grey >= 65 & grey <= 66) = 150;
grey(grey >= 5 & grey <= 45) = 135;
grey(grey >= 54 & grey <= 64) = 120;
grey(grey >= 49 & grey <= 53) = 105;
grey(grey >= 46 & grey <= 48) = 90;
grey(grey >= 67 & grey <= 72) = 75;
grey(grey >= 73 & grey <= 85) = 60;
grey(grey >= 130 & grey <= 154) = 45;
grey(grey >= 155 & grey <= 171) = 30;
grey(grey >= 186 & grey <= 199) = 15;
grey(grey <= 4) = 0;


% Final Note:
   % 20 - 99    imageex 240.
   % 100 - 399  imageex 225.
   % 400 - 1k   imageex 210
   % 1k - 2k    imageex 195
   % 2k - 3.5k  imageex 180
   % 3.5k-5.5k  imageex 165
   % So on in increments of 15.



%% Intialising

B = zeros(Rows,Columns,2);
B(:,:,1) = grey;
D = B(:,:,1);
A = B(:,:,2);

%% Section Masks

disp("Sectioning Masks")

 %% Pre load
load('ColorMap');

%% Initial States
RI = rand(Rows, Columns);
RS = rand(Rows, Columns);

% Walls
A(D == 0) = 2;

%Population Density for L1:
A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, 0.00075, 240);

%Population Density for L2:
A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, 0.003125, 225);

%Population Density for L3:
A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, 0.00875, 210);

%Population Density for L4:
A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, 0.01875, 195);

%Population Density for L5:
A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, 0.034375, 180);

%Population Density for L6:
A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, 0.05625, 165);

%Population Density for L7:
A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, 0.08125, 150);

%Population Density for L8:
A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, 0.10625, 135);

%Population Density for L9:
A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, 0.134375, 120);

%Population Density for L10:
A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, 0.16875, 105);

%Population Density for L11:
A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, 0.20625, 90);

%Population Density for L12:
A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, 0.25, 75);

%Population Density for L13:
A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, 0.3125, 60);

%Population Density for L14:
A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, 0.425, 45);

%Population Density for L15:
A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, 0.75, 30);

%Population Density for L16:
A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, 0.99, 15);

 % random initial configuration

    % indices of west neighbour

%% Inputs

%IFR = Infection Rate
%CR = Cure rate
%DR = Death Rate
%RDR = Random Death Rate
%RR = Repopulate Rate
%BR = Decompose rate

% Matrix example: [IFR CR DR RDR RR BR]

%L1 Probability Matrix
%       IFR     CR     DR    RDR      RR    BR
L1 =  [0.015 0.00002 0.0010 0.00100 0.0005 0.2];
L2 =  [0.015 0.00004 0.0010 0.00090 0.0005 0.2];
L3 =  [0.015 0.00004 0.0010 0.00060 0.0010 0.3];
L4 =  [0.015 0.00006 0.0010 0.00030 0.0010 0.3];
L5 =  [0.015 0.00008 0.0010 0.00010 0.0015 0.3];
L6 =  [0.015 0.00010 0.0010 0.00005 0.0015 0.3];
L7 =  [0.015 0.00012 0.0010 0.00001 0.0020 0.3];
L8 =  [0.015 0.00014 0.0010 0.00002 0.0025 0.4];
L9 =  [0.015 0.00016 0.0010 0.00003 0.0039 0.4];
L10 = [0.015 0.00018 0.0010 0.00004 0.0035 0.4];
L11 = [0.015 0.00020 0.0010 0.00005 0.0040 0.4];
L12 = [0.015 0.00022 0.0009 0.00006 0.0045 0.5];
L13 = [0.015 0.00024 0.0008 0.00007 0.0050 0.5];
L14 = [0.015 0.00026 0.0007 0.00008 0.0055 0.5];
L15 = [0.015 0.00028 0.0006 0.00009 0.0060 0.5];
L16 = [0.015 0.00030 0.0005 0.00010 0.0065 0.5];

%% PROBABILITY FOR LOOPS:

L = [L1; L2; L3; L4; L5; L6; L7; L8; L9; L10; L11; L12; L13; L14; L15; L16];

disp("Creating Infection Rate")
InfectionRate = createRate(Rows, Columns, L, D, 1);

disp("Creating Cure Rate")
CureRate = createRate(Rows, Columns, L, D, 2);

disp("Creating Death Rate")
DeathRate = createRate(Rows, Columns, L, D, 3);

disp("Creating Random Death Rate")
RandomDeathRate = createRate(Rows, Columns, L, D, 4);

disp("Creating Random Repopulate Rate")
RepopulateRate = createRate(Rows, Columns, L, D, 5);

disp("Creating Decompose Rate")
DecomposeRate = createRate(Rows, Columns, L, D, 6);

%% Pre draw
ax = figure;
set(ax, 'Visible', 'on')
set(gcf, 'KeyPressFcn', @KeyPressed) % this allows us to react to any key pressed in the figure window
handle = imagesc(A);
title('Simulation - Press any key to finish');
%colormap(mymap)

draw(A, handle, mymap, ax);

%% Simulation

disp("Starting simulation")

% Graph Simulation

% This graph will run alongside the cellular automata, adding new points as
% it goes along, to help visualise what is happing in the cellualr automata
% simulation by showing the total number of healthy people (cells),
% infected people (cells), and dead people (cells) at a certain time.

figure;
ax2 = gca;
x_step = 0;
h1 = animatedline(ax2, 'Color','g'); % Healthy/Green
h2 = animatedline(ax2, 'Color', 'r'); % Infected/Red
h3 = animatedline (ax2, 'Color', 'k'); % Dead/Grey
title('Graph of Healthy, Infected, and Dead People VS Time')
xlabel('Time (days)')
ylabel('No. of People')


north = [Rows 1:Rows-1];     % indices of north neighbour
east  = [2:Columns 1];       % indices of east neighbour
south = [2:Rows 1];       % indices of south neighbour
west  = [Columns 1:Columns-1]; 

% Cellular Automata Simulation

% The cellular automata for this disease model will run over our masked map
% of a country and show the spread of the disease across the map based on
% the population density in the certain areas.

done = false;
while ~done
    % Random Seed
    RS = rand(Rows, Columns);
    
    % Amount of certain type of neighbours
    unnocupied_neighbours = getNeighbours(A, 1, north, south, east, west);
    wall_neighbours = getNeighbours(A, 2, north, south, east, west);
    healthy_neighbours = getNeighbours(A, 3, north, south, east, west);
    infected_neighbours = getNeighbours(A, 4, north, south, east, west);
    dead_neighbours = getNeighbours(A, 5, north, south, east, west);
    
    %## Unnocupied actions 1
    % If there is a person, chance to bury the dead body making an unoccupied action
    unnocupied_rule_1 = (A(:, :)==5) & (healthy_neighbours >= 1) & (RS(:, :) < 0.4);
    
    % Chance to decompose
    unnocupied_rule_2 = (A(:, :)==5) & (RS(:, :) < DecomposeRate);
    
    %## Wall actions 2
    
    %## Healthy actions 3
    % Chance to repopulate
    healthy_rule_1 = (A(:, :)==1) & ((healthy_neighbours + infected_neighbours) >= 2) & (RS(:, :) < RepopulateRate);
    
    % If there are enough healthy people people chance to get cured
    healthy_rule_2 = (A(:, :)==4) & (healthy_neighbours > 2) & (RS(:, :) < CureRate);
    
    
    %## Infected actions 4
    % If there are enough infected people people chance to get infected
    infected_rule_1 = (A(:, :)==3) & (infected_neighbours >= 2) & (RS(:, :) < InfectionRate);
    
    %## Dead actions 5
    % Infected death chance
    dead_rule_1 = (A(:, :)==4) & (RS(:, :) < DeathRate);
    
    % Small chance of death
    dead_rule_2 = (A(:, :)==4 | A(:,:)==3) & (RS(:, :) < RandomDeathRate);
        
    %# Apply actions
    A(unnocupied_rule_1 | unnocupied_rule_2) = 1;
    % Wall actions
    A(healthy_rule_1 | healthy_rule_2) = 3;
    A(infected_rule_1) = 4;
    A(dead_rule_1 | dead_rule_2) = 5;
    
    % Update the state
    draw(A, handle, mymap, ax);
    
       
    
 
    
    % Number of 3's in matrix A (3 = Green/Healthy)
    sum_3s = sum(A(:) == 3);
    % Number of 4's in matrix A (4 = Red/Infected)
    sum_4s = sum(A(:) == 4);
    % Number of 5's in matrix A (5 = Grey/Dead)
    sum_5s = sum(A(:) == 5);

    x_step = x_step + 1;
    addpoints(h1, x_step, sum_3s); % Healthy
    addpoints(h2, x_step, sum_4s); % Infected
    addpoints(h3, x_step, sum_5s); % Dead
    Str3 = num2str(sum_3s);
    Str4 = num2str(sum_4s);
    Str5 = num2str(sum_5s);
    
    legend(ax2, {['Healthy: ' Str3], ['Infected: ' Str4], ['Deceased: ' Str5]})
    % shows what the lines mean and also shows the total no. of people who
    % are healthy, infected, or dead at that specific time in the
    % simulation.
end

%% Functions
function draw(A, handle, mymap, ax)
    handle.CData = A;
    %set(handle, 'cdata', A, mymap);
    drawnow
    colormap(ax, mymap)
end

function A = setPopulationDensity(A, D, startingInfectionProbability, RI, RS, Rows, Columns, probabilty, id)
    z = ones(Rows, Columns);

    z(RS <= probabilty & RI >= startingInfectionProbability) = 3;
    z(RS <= probabilty & RI < startingInfectionProbability) = 4;

    A(D == id) = z(D == id);
end

function M = createRate(Rows, Columns, L, D, id)
    N = zeros(Rows, Columns);
    
    N(D == 240) = L(1, id);
    N(D == 225) = L(2, id);
    N(D == 210) = L(3, id);
    N(D == 195) = L(4, id);
    N(D == 180) = L(5, id);
    N(D == 165) = L(6, id);
    N(D == 150) = L(7, id);
    N(D == 135) = L(8, id);
    N(D == 120) = L(9, id);
    N(D == 105) = L(10, id);
    N(D == 90) = L(11, id);
    N(D == 75) = L(12, id);
    N(D == 60) = L(13, id);
    N(D == 45) = L(14, id);
    N(D == 30) = L(15, id);
    N(D == 15) = L(16, id);
    
    M = N;
end

% This function is the means by which we can intercept a keypress from the user, to stop the loop
function KeyPressed(~, ~)
    evalin('base', 'done = true;')
end

function neighbours = getNeighbours(A, type, north, south, east, west)
    neighbours = (A(north, :)==type) + (A(south, :)==type) + (A(:, east)==type) + (A(:, west)==type) ...
               + (A(north, east)==type) + (A(north, west)==type) + (A(south, east)==type) + (A(south, west)==type);
end

%% Keys
% 1 = White = Unoccupied
% 2 = Blue  = Wall
% 3 = Green = Healthy
% 4 = Red   = Infected
% 5 = Grey  = Dead