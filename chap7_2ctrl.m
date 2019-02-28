%S-function for continuous state equation
function [sys,x0,str,ts]=s_function(t,x,u,flag)

switch flag,
%Initialization
  case 0,
    [sys,x0,str,ts]=mdlInitializeSizes;
%Outputs
  case 3,
    sys=mdlOutputs(t,x,u);
%Unhandled flags
  case {2, 4, 9 }
    sys = [];
%Unexpected flags
  otherwise
    error(['Unhandled flag = ',num2str(flag)]);
end

%mdlInitializeSizes
function [sys,x0,str,ts]=mdlInitializeSizes
sizes = simsizes;
sizes.NumContStates  = 0;
sizes.NumDiscStates  = 0;
sizes.NumOutputs     = 1;
sizes.NumInputs      = 4;
sizes.DirFeedthrough = 1;
sizes.NumSampleTimes = 0;

sys=simsizes(sizes);
x0=[];
str=[];
ts=[];


function sys=mdlOutputs(t,x,u)
r=sin(2*pi*t);
dr=2*pi*cos(2*pi*t);
ddr=-(2*pi)^2*sin(2*pi*t);

s=u(1);
fde=u(2);
%q¡¢dq
x(1)=u(3);
x(2)=u(4);

m=0.2146;
c=1.994;

if x(2)>0
    dt=0.8788;
else
    dt=-0.94645;
end

k1=5;
k2=0.5;
%k1=5;
%k2=0.5;

ut=m*(ddr+u(2)+k1*s+k2*sign(s))+c*u(4)+dt;

sys(1)=ut;



