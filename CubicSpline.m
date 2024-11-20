%% Run separately
h = 0:24;
T = [25.6 25.4 25.1 24.9 24.9 25.2 25.9 26.3 27.1 29.3 30.8 31.2 32.1 31.0 30.3 31.4 30.6 31.8 29.6 28.4 28.1 28.2 27.4 26.8 26.1];
plot(h, T , '-o'); hold on;

hI = 0:0.2:24;
TI = spline(h, T, hI);
plot(hI, TI , '-k'); 


%% Run separately
t = 0 : 10 : 90;
s = [45 32 0 0 7 12 20 15 29 55];
plot(t, s, 'bo'); hold on;

tI = 0:90;
sI = spline(t, s, tI);
plot(tI, sI, '-k')
