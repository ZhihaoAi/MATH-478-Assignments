clear i; i = complex(0,1);
[x, y] = meshgrid(-6:0.01:6, -6:0.01:6);
z = complex(x,y);
% phi = 1 + z; %EE, RK1
% phi = 1 + z + z.^2/2; %RK2
% phi = 1 + z + z.^2/2 + z.^3/6; %RK3
% phi = 1 + z + z.^2/2 + z.^3/6 + z.^4/24; %RK4
% phi = 1 ./ (1 - z); %IE
% phi = (1 + z./2) ./ (1 - z./2); %TR, AM2
% phi1 = 1/4 .* (2 + 3.*z + sqrt(4 + 4.*z + 9.*z.^2)); % AB2
% phi2 = 1/4 .* (2 + 3.*z - sqrt(4 + 4.*z + 9.*z.^2));
% contourf(x,y,max(abs(phi1),abs(phi2)),[1 1]);
% phi1 = (-2 - sqrt(1+2.*z)) ./ (2.*z-3); % BDF2
% phi2 = (-2 + sqrt(1+2.*z)) ./ (2.*z-3);
% contourf(x,y,max(abs(phi1),abs(phi2)),[1 1]);

rg = abs(phi);
v = [1 1];
contourf(x,y,rg,v);
colormap(gray);
axis image;
grid on;
