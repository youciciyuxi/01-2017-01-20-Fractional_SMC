clear;
clc;

load('input.mat')
%load('singlesin.mat')

Ts=0.001;                                                           % Sample Period: 1ms 

[PlantXPara,PlantYPara,PlantZPara,PlantAPara,PlantCPara]=PlantParameters(Ts);
PlantXNum=[PlantXPara.b1 PlantXPara.b0];
PlantXDen=[1 PlantXPara.a1 PlantXPara.a0];
PlantYNum=[PlantYPara.b1 PlantYPara.b0];
PlantYDen=[1 PlantYPara.a1 PlantYPara.a0];
PlantZNum=[PlantZPara.b1 PlantZPara.b0];
PlantZDen=[1 PlantZPara.a1 PlantZPara.a0];
PlantANum=[PlantAPara.b1 PlantAPara.b0];
PlantADen=[1 PlantAPara.a1 PlantAPara.a0];
PlantCNum=[PlantCPara.b1 PlantCPara.b0];
PlantCDen=[1 PlantCPara.a1 PlantCPara.a0];


%sim('chap7_2sim');










