syms x1 x2 x3 x4 F2 F1 x5 x6
syms m1 m2 l1 l2 g
B = [(m1+m2)*(l1^2)+m2*(l2^2)+2*m2*l1*l2*cos(x3) m2*(l2^2)+m2*l1*l2*cos(x3);m2*(l2^2)+m2*l1*l2*cos(x3) m2*(l2^2)];

C = [-m2*l1*l2*sin(x3)*(2*x2*x4+x4^2);m2*l1*l2*sin(x3)*x2*x4];

G = [(m1+m2)*l1*g*sin(x1)+m2*l2*g*sin(x1+x3);m2*l2*g*sin(x1+x3)];

F = [F1;F2];
qq = (B^-1)*((-C-G)+F);

x5 = qq(1,1);
x6 = qq(2,1);
clear all;
clc;
m1 =1;
m2 =1; l1=1;l2=1;
g=9.81;
teta1_init=(pi/2)+0.001;teta1_dot_init=0;teta2_init=0.001;teta2_dot_init=0;

