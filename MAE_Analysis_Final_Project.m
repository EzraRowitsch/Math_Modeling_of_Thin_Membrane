clear; clc; close all

r = 0:.01:1;
theta = 0:.0625:2*pi;
x = r.*cos(theta);
y = r.*sin(theta);
gamma_n = [2.4048 5.5201 8.6537 11.7915 14.9309];
u=zeros(1,length(r));
t = 1;
%for z=1:length(t)
for i = 1:length(r)
    for j=1:length(gamma_n)
        u(i) = u(i) + 4*besselj(0,gamma_n(j)*r(i))*sin(sqrt(gamma_n(j)))*t/(gamma_n(j)*besselj(1,gamma_n(j)));
    end
end
u=u./max(abs(u));
r =[-flip(r) r];
u = [flip(u) u];
plot(r,u)
%pause(.01)
%end

figure(2)
for i=1:length(r)
    j=1;
    u(i) = 4*besselj(0,gamma_n(j)*r(i))*sin(sqrt(gamma_n(j))*t)/(gamma_n(j)*besselj(1,gamma_n(j)));
end
u=u./max(abs(u));
r =[-flip(r) r];
u = [flip(u) u];
plot (r,u);

figure(3)
for i=1:length(r)
    j=2;
    u(i) = 4*besselj(0,gamma_n(j)*r(i))*sin(sqrt(gamma_n(j))*t)/(gamma_n(j)*besselj(1,gamma_n(j)));
end
u=u./max(abs(u));
r =[-flip(r) r];
u = [flip(u) u];
plot(r,u)
figure(4)
for i=1:length(r)
    j=3;
    u(i) = 4*besselj(0,gamma_n(j)*r(i))*sin(sqrt(gamma_n(j))*t)/(gamma_n(j)*besselj(1,gamma_n(j)));
end
u=u./max(abs(u));
r =[-flip(r) r];
u = [flip(u) u];
plot(r,u)
figure(5)
for i=1:length(r)
    j=4;
    u(i) = 4*besselj(0,gamma_n(j)*r(i))*sin(sqrt(gamma_n(j))*t)/(gamma_n(j)*besselj(1,gamma_n(j)));
end
u=u./max(abs(u));
r =[-flip(r) r];
u = [flip(u) u];
plot(r,u)
figure(6)
for i=1:length(r)
    j=5;
    u(i) = 4*besselj(0,gamma_n(j)*r(i))*sin(sqrt(gamma_n(j))*t)/(gamma_n(j)*besselj(1,gamma_n(j)));
end
plot(r,u)


%{
figure(3)
plot3(x,y,u)
[X] = meshgrid(x);
[Y] = meshgrid(y);
[U] = meshgrid(u);

figure (2)
plot3(X,Y,U)
%}