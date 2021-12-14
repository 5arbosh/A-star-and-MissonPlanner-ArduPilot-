 %Test script for A_STAR
% Requires A_STAR and A_STAR_PLOT

%%
map= true(10);

map(5,10) = true; % start
map(3, 1) = true; % goal
start =95 ;
goal = 3;

costs = ones(size(map));
costs(2:8,3:6)=80
costs(1,:)=70
costs(9,2:8)=60
costs(10,8)=90;

final = a_star((map), costs, start, goal);
a_star_plot((map), costs, final);

p1=get_path(start, goal);
real1=compute_cost(size(map), start, p, goal);
notreal1=compute_cost(size(map), start, 12, goal);
eff1=real1-notreal1

%%%
map=true(20);
    

map(3,17) = true; % star
map(5, 1) = true; % goal
start =37 ;
goal = 346;

costs = ones(size(map));

costs(1:15,1:20)=60;
costs(10:15,1:15)=50;
costs(10:15,15:20)=10;
costs(15:20,1:10)=45;
costs(15:20,11:14)=40;
costs(15:20,15:20)=30;

final = a_star((map), costs, start, goal);
a_star_plot((map), costs, final);

p2=get_path(start, goal);
real2=compute_cost(size(map), start, p, goal);
notreal2=compute_cost(size(map), start, 15, goal);
eff=real2-notreal2
%%
map = [ ...
    1, 1, 1, 1, 1 ,1, 0, 1, 1, 0; ...
    1, 1, 1, 0, 0 ,1, 1, 0 , 1,1; ...
    1, 1, 1, 0, 1 ,0, 1, 1, 1,0; ...
    1, 1, 0, 1, 1 ,1, 0, 0, 1, 1; ...
    1, 1, 1, 1, 1 ,0, 1, 0, 0, 0; ...
    1, 1, 1, 0, 1 ,1, 0, 1, 1, 1; ...
    1, 0, 1, 1, 0 ,1, 0, 1, 0, 1; ...
    1, 0, 1, 0, 1 ,0 0, 0, 1, 1; ...
    1, 1, 1, 1, 1 ,1, 1, 1, 1, 1; ...
    1, 1, 1, 1, 1 ,1, 1, 1, 1, 1; ...
    ];
    

map(10,5) = true; % star
map(2, 3) = true; % goal
start =50 ;
goal = 71;
costs = ones(size(map));
costs(1:10,1:4)=10;
costs(1:10,5:8)=15;
costs(1:10,9:10)=5;

final = a_star(logical(map), costs, start, goal);
a_star_plot(logical(map), costs, final)

p3=get_path(start, goal);
real3=compute_cost(size(map), start, p, goal);
notreal3=compute_cost(size(map), start, 12, goal);
eff=real3-notreal3