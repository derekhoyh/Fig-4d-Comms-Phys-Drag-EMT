load('rhodemtgrid.mat')
% Note that rhodeff in rhodemtgrid.mat already has the multiplicative
% factor named 'factor' included in it. No need to multiply by it again here! 
% figure();

% v=[-1 -0.8 -0.5 -0.3 -0.2 -0.1 0.1 0.2 0.3 0.5 0.8 1  ];

% FOR SURFPLOT USE THIS
% figure;surf(ng2,ng1,rhodeff,'EdgeColor', 'None', 'facecolor', 'interp','LineWidth',3);
% colormap jet;
% view(2);
% box on;
% c = colorbar;
% set(c,'ylim',[min(min(rhodeff)) max(max(rhodeff))])
% xlim([-60 60]);ylim([-60 60])



v=[-3 -2.5 -2 -1.5 -1 1 1.5 2 2.5 3];

fun=@(nqA,nqP) interp2(ng1,ng2,rhodeff,nqA,nqP,'spline',NaN);

interv=(-76:0.1:76);

nA=repmat(interv,length(interv),1);
nP=repmat(interv',1,length(interv));

z=fun(nA,nP);

% contour(nAplt,nPplt,rhodeff,v);

figure;
contour(nA,nP,z,v,'LineWidth',2);
% figure;surf(nA,nP,z)

colormap jet;
view(2);
box on;

ylim([-50 50])
xlim([-50 50])

text(-45,40,'(d)','FontSize',30);
% text(23,40,'$T=70K$','FontSize',20, 'Interpreter', 'latex');
xlabel('$n_{A}$ ($10^{10} \mathrm{cm}^{-2}$)', 'FontSize', 30, 'Interpreter', 'latex');
ylabel('$n_{P}$ ($10^{10} \mathrm{cm}^{-2}$)', 'FontSize', 30, 'Interpreter', 'latex');
h.XTick=(-50:25:50);
h.YTick=(-50:25:50);
h.XMinorTick='on';
h.YMinorTick='on';

c = colorbar;
% ylabel(c, '$\tilde{\rho}_{D}^{\mathrm{EMT}}$ ($\Omega$)', 'FontSize', 30, 'Interpreter', 'latex');

h=gca;
h.LineWidth=3;
h.FontSize=20;

print('Fig4d.pdf','-dpdf')
