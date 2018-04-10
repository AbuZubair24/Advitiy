function out3=summation(Wn,t,Wo,S)
%%S=1/20;
% T=1.5707;
Wd=Wn*sqrt(1-(S)^2);
%Y=half_sine(T,1)*(exp(-S*Wn*(t-T)))*((Wd^(2)-S^(2)*Wn^(2))*sin(Wd*(t-T))+2*S*Wn*Wd*cos(Wd*(t-T)));
out3=0;
for T=0:0.0001:t
    c=saw_t(T,Wo)*(exp(-S*Wn*(t-T)))*((Wd^(2)-S^(2)*Wn^(2))*sin(Wd*t-Wd*T)+2*S*Wn*Wd*cos(Wd*t-Wd*T))*0.0001/Wd;
    out3=out3 + c;
    
end
end