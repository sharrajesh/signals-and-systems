ax=[-1/2 zeros(1,7) 3/4 0 3/4 zeros(1,7) -1/2 0]
wk=[(-9*2*pi)/20:(2*pi)/20:(10*2*pi)/20]

hfig=clf
subplot(2,1,1)
stairs(wk,ax)
xlabel('wk')
ylabel('ak')
grid

%axp=periodic(ax,-9,-100,100)
%stairs([-100:100],axp)

axp=periodic(ax,-9,0,19)
wk=[(0*2*pi)/20:(2*pi)/20:(19*2*pi)/20]

figure(hfig)
subplot(2,1,2)
stairs(wk,axp)
xlabel('wk')
ylabel('ak')
grid
