figure(1)
load('error1.mat')
plot(error,'b');
hold on
load('erro9.mat')
plot(error,'r:');

figure(2)
load('torque1.mat')
plot(torque,'b');
hold on 
load('torque9.mat')
plot(torque,'r:');
