clc
clear all;
cla reset
% iteration for varying e/D
for i=2:6
    re = 1000;
    red1 = 5*10^(-i); 
    red2 = 2*10^(-i);
    red3 = 10^(-i);
    red =  4*10^(-i);
    % iteration for varying raynolds no
    while re<1e8
        % every colebrook function gives (value of friction factor) on coresponding 
        % value of re/d and Re
        % colebrook function defined in saperate file
        f = colebrook(red1,re); 
        semilogx(re,f,'.k')
        hold on
        f = colebrook(red2,re);
        semilogx(re,f,'.k')
        hold on
        if i<5
            f = colebrook(red3,re);
            semilogx(re,f,'.k')
            hold on
            if i<3
                f = colebrook(red,re);
                semilogx(re,f,'.k')
                hold on
            end
        end
        re=re+re/30; % incrementing Re
    end      
end
title('Moody Diaagram')
xlabel('Reynoldes No (Re)');
ylabel('Friction factor (f)');
grid on
saveas(gcf,'Moody_diagram','jpg')
cla reset
clear all;
