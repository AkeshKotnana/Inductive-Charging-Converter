clc;
clear all;
close all;
m=[3 6 15];
wx=logspace (-1,1,1000);
colors=['r' 'g' 'b' 'c' 'm' 'k']
Q=[0.2 0.3 0.5 0.7 1 6];
for y=1:3
figure
for i=1:6
Gain=(((8/(pi^2))*(wx.^2)*(m(y)-1))./(((m(y)*(wx.^2)-1).^2+((wx.^2).*((wx.^2)-1).^2).*((m(y)-1).^2)*(Q(i)^2)).^0.5));
semilogx (wx, Gain, 'color', colors (i), 'LineWidth',2)
hold on
end
legend ('Q=0.2','Q=0.3', 'Q=0.5','Q=0.7', 'Q=1','Q=6')
title(['|G(\omega)| vs \omega with m ',num2str(m(y))], 'FontSize',18)
xlabel('\omega_x', 'FontSize',14)
ylabel('|G(\omega_x)|', 'FontSize',14)
grid on
end
%%
for i=1:6
    y=2
Gain=(((8/(pi^2))*(wx.^2)*(m(y)-1))./(((m(y)*(wx.^2)-1).^2+((wx.^2).*((wx.^2)-1).^2).*((m(y)-1).^2)*(Q(i)^2)).^0.5));
semilogx (wx, Gain, 'color', colors (i), 'LineWidth',2)
hold on
end
grid on
legend ('Q=0.2','Q=0.3', 'Q=0.5','Q=0.7', 'Q=1','Q=6')
title(['|G(\omega)| vs \omega with m ',num2str(m(y))], 'FontSize',18)
xlabel('\omega_x', 'FontSize',14)
ylabel('|G(\omega_x)|', 'FontSize',14)