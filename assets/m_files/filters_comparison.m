clear all
clc

Df1 = designfilt('lowpassfir', 'FilterOrder', 15, 'CutoffFrequency', 25, 'SampleRate', 250);


Df2 = designfilt('lowpassiir', 'FilterOrder', 5, 'PassbandFrequency', 25, 'PassbandRipple', 0.1, 'SampleRate', 250);


hfvt = fvtool(Df1, Df2, 'freq');
s = get(hfvt);
hchildren = s.Children;
haxes = hchildren(strcmpi(get(hchildren,'type'),'axes'));
hline = get(haxes,'children');
ix = get(hline,'XData');
iy = get(hline,'YData');

hfvt1 = fvtool(Df1, Df2, 'phase');
s1 = get(hfvt1);
hchildren1 = s1.Children;
haxes1 = hchildren1(strcmpi(get(hchildren1,'type'),'axes'));
hline1 = get(haxes1,'children');
fx = get(hline1,'XData');
fy = get(hline1,'YData');

%%
FigW=30;
FigH=20;

Figure1=figure(1);clf;
set(Figure1,'defaulttextinterpreter','none',...
    'defaultAxesTickLabelInterpreter', 'none', ...
    'defaultLegendInterpreter', 'none', ...
    'DefaultAxesFontSize', 15, ...
    'PaperUnits','centimeters','PaperSize',[FigW FigH],...
    'PaperPosition',[0,0,FigW,FigH],'Units','centimeters',...
    'Position',[1,10,FigW,FigH]);

tiledlayout(2, 1, 'TileSpacing', 'Compact')
nexttile
plot(ix{2}, iy{2}, ix{1}, iy{1}, 'LineWidth', 1.2)
xlabel('Frekvence [Hz]')
ylabel('Modul [dB]')
legend('FIR 15. řádu', 'IIR Čebyšev 5. řádu','FontSize',14)
axis tight
ylim([-150 10])
grid on

nexttile
plot(fx{2}, fy{2}, fx{1}, fy{1}, 'LineWidth', 1.2)
xlabel('Frekvence [Hz]')
ylabel("Fáze [rad]")
legend('FIR 15. řádu', 'IIR Čebyšev I 5. řádu')
axis tight
ylim([-12 0])
grid on

print('-dpdf', '-r500', 'filters_comparison.pdf')













