p0 = [7;0;1];
T = [1, 0, 2; 0, 1, 0;, 0, 0, 1];

theta = deg2rad(90);
R = [cos(theta) -sin(theta), 0; sin(theta) cos(theta), 0; 0, 0, 1];

p1 = T* R* p0
p2 = R* T* p0

