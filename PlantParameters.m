function[PlantX,PlantY,PlantZ,PlantA,PlantC] = PlantParameters(Ts)
% Plant parameters
PlantX.J = 0.00014459;     %(kg*m^2)
PlantX.B = 0.0013433;      %(kg*m^2/s)
PlantX.Ka = 0.8268;       %(A/V)
PlantX.Kt = 0.512;       %Nm/A
PlantX.rg = 10/(2*pi);         %mm/rad
PlantX.K = PlantX.Ka*PlantX.Kt*PlantX.rg;   %(N*m^2/V)/1000
PlantX.m = PlantX.J/PlantX.K; %(V*s^2/mm) 
PlantX.c = PlantX.B/PlantX.K; %(V*s/mm)

PlantX.Kv = PlantX.K/PlantX.B;
PlantX.Taov = PlantX.J/PlantX.B;
PlantX.b1 = PlantX.Kv*(Ts-PlantX.Taov*(1-exp(-Ts/PlantX.Taov)));
PlantX.b0 = PlantX.Kv*(PlantX.Taov*(1-exp(-Ts/PlantX.Taov))-Ts*exp(-Ts/PlantX.Taov));
PlantX.a0 = exp(-Ts/PlantX.Taov);
PlantX.a1 = -(1+exp(-Ts/PlantX.Taov));


PlantY.J = 0.00019288; %(kg*m^2)
PlantY.B = 0.00076202; %(kg*m^2/s)
PlantY.Ka = 0.8268;  %(A/V)
PlantY.Kt = 0.512;  %Nm/A
PlantY.rg = 10/(2*pi);    %mm/rad
PlantY.K = PlantY.Ka*PlantY.Kt*PlantY.rg; %(N*m^2/V)/1000
PlantY.m = PlantY.J/PlantY.K; %(V*s^2/mm)
PlantY.c = PlantY.B/PlantY.K; %(V*s/mm)

PlantY.Kv = PlantY.K/PlantY.B;
PlantY.Taov = PlantY.J/PlantY.B;
PlantY.b1 = PlantY.Kv*(Ts-PlantY.Taov*(1-exp(-Ts/PlantY.Taov)));
PlantY.b0 = PlantY.Kv*(PlantY.Taov*(1-exp(-Ts/PlantY.Taov))-Ts*exp(-Ts/PlantY.Taov));
PlantY.a0 = exp(-Ts/PlantY.Taov);
PlantY.a1 = -(1+exp(-Ts/PlantY.Taov));

PlantZ.J = 0.00010560; %(kg*m^2)       %For old table
PlantZ.B = 0.00098666; %(kg*m^2/s)      %For old table
PlantZ.Ka = 0.8268;  %(A/V)
PlantZ.Kt = 0.512;  %Nm/A
PlantZ.rg = 10/(2*pi);    %mm/rad
PlantZ.K = PlantZ.Ka*PlantZ.Kt*PlantZ.rg; %(N*m^2/V)/1000
PlantZ.m = PlantZ.J/PlantZ.K; %(V*s^2/mm)
PlantZ.c = PlantZ.B/PlantZ.K; %(V*s/mm)

PlantZ.Kv = PlantZ.K/PlantZ.B;
PlantZ.Taov = PlantZ.J/PlantZ.B;
PlantZ.b1 = PlantZ.Kv*(Ts-PlantZ.Taov*(1-exp(-Ts/PlantZ.Taov)));
PlantZ.b0 = PlantZ.Kv*(PlantZ.Taov*(1-exp(-Ts/PlantZ.Taov))-Ts*exp(-Ts/PlantZ.Taov));
PlantZ.a0 = exp(-Ts/PlantZ.Taov);
PlantZ.a1 = -(1+exp(-Ts/PlantZ.Taov));

PlantA.J = 0.00046597; %(kg*m^2)
PlantA.B = 0.0016937; %(kg*m^2/s)
PlantA.Ka = 0.8268;  %(A/V)
PlantA.Kt = 0.512;  %Nm/A
PlantA.rg = 1/100;
PlantA.K = PlantA.Ka*PlantA.Kt*PlantA.rg;
PlantA.m = PlantA.J/PlantA.K; %(V*s^2/rad)
PlantA.c = PlantA.B/PlantA.K; %(V*s/rad)

PlantA.Kv = PlantA.K/PlantA.B;
PlantA.Taov = PlantA.J/PlantA.B;
PlantA.b1 = PlantA.Kv*(Ts-PlantA.Taov*(1-exp(-Ts/PlantA.Taov)));
PlantA.b0 = PlantA.Kv*(PlantA.Taov*(1-exp(-Ts/PlantA.Taov))-Ts*exp(-Ts/PlantA.Taov));
PlantA.a0 = exp(-Ts/PlantA.Taov);
PlantA.a1 = -(1+exp(-Ts/PlantA.Taov));

PlantC.J = 0.00030504; %(kg*m^2)
PlantC.B = 0.0016386; %(kg*m^2/s)
PlantC.Ka = 0.8268;  %(A/V)
PlantC.Kt = 0.512;  %Nm/A
PlantC.rg = 1/100;
PlantC.K = PlantC.Ka*PlantC.Kt*PlantC.rg;
PlantC.m = PlantC.J/PlantC.K; %(V*s^2/rad)
PlantC.c = PlantC.B/PlantC.K; %(V*s/rad)

PlantC.Kv = PlantC.K/PlantC.B;
PlantC.Taov = PlantC.J/PlantC.B;
PlantC.b1 = PlantC.Kv*(Ts-PlantC.Taov*(1-exp(-Ts/PlantC.Taov)));
PlantC.b0 = PlantC.Kv*(PlantC.Taov*(1-exp(-Ts/PlantC.Taov))-Ts*exp(-Ts/PlantC.Taov));
PlantC.a0 = exp(-Ts/PlantC.Taov);
PlantC.a1 = -(1+exp(-Ts/PlantC.Taov));