close all
I = imread('../datos/zero512.png');
figure(1)
imshow(I)
axis on

hp = impixelinfo;
set(hp, 'Position', [5 350 150 20]);
fontsize(12, "points");

pause

figure(2)
t = 2;
mesh(I')
colormap('gray')
colorbar
axis([0 512 0 512 0 256])
view(90,90)
pause
colormap('parula')
colorbar
axis([0 512 0 512 0 256])
pause
[caz,cel] = view;
figure(3)
if t==3
    subplot(1,3,1)
    imshow(I)
end
y = '';


for i=0:2:256
    subplot(1,t,t-1)
    hold off
    mesh(I')
    hold on
    J = i*ones(512,512);
    mesh(J')
    view(caz,cel);
    axis off
    axis([0 512 0 512 0 256])
    subplot(1,t,t)
    imshow(I<i)
    title(['Threshold = ' num2str(i)],'Color','white')
    if isempty(y)
        y = input('Enter?','s');
        subplot(1,t,t-1)
        [caz,cel] = view;
    end
    pause(0)
end
