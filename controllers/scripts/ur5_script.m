% ur5 equations
%UR5 DH paramenters from https://www.universal-robots.com/articles/ur/application-installation/dh-parameters-for-calculations-of-kinematics-and-dynamics/
theta1 = 0;
theta2 = 0;
theta3 = 0;
theta4 = 0;
theta5 = 0;
theta6 = 0;

a1 = 0;
a2 = -0.425;
a3 = -0.3922;
a4 = 0;
a5 = 0;
a6 = 0;

alpha1 = pi / 2;
alpha2 = 0;
alpha3 = 0;
alpha4 = pi / 2;
alpha5 = -(pi / 2);
alpha6 = 0;

distance1 = 0.1625;
distance2 = 0;
distance3 = 0;
distance4 = 0.1333;
distance5 = 0.0997;
distance6 = 0.0996;

dhParameters = [
            theta1 a1 distance1 alpha1;
            theta2 a2 distance2 alpha2;
            theta3 a3 distance3 alpha3;
            theta4 a4 distance4 alpha4;
            theta5 a5 distance5 alpha5;
            theta6 a6 distance6 alpha6;
            ];

tMatrixArray = []

for i = 1:6

    theta = dhParameters(i, 1);
    a = dhParameters(i, 2);
    alpha = dhParameters(i, 3);
    distance = dhParameters(i, 4);

    tMatrix = [
            cos(theta) -sin(theta) 0 a;
            sin(theta) * cos(alpha) cos(theta) * cos(alpha) -sin(alpha) -sin(alpha) * distance;
            sin(theta) * sin(alpha) cos(theta) * sin(alpha) cos(alpha) cos(alpha) * distance;
            0 0 0 1;
            ]

end
