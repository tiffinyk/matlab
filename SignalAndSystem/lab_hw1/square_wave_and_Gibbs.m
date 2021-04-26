%%
tic
clc;
close all;
clear all;
t=-2:0.01:2;
T=[15,25,55,105,205];
E=zeros(1,5);
for k=1:length(T)
    a=0;
    for n=1:2:T(k)
        b=exp(1i*n*pi*t)/n;
        a=a+b;
    end
    y=2*a/(1j*pi);
    x=0.5*square(pi*t);
    err=real(y)-x;
    E(k)=sum((err(1,:)-mean(err)).^2)/length(err);
    
    figure;
    p=plot(t,real(y),t,x);
    axis([-2,2,-0.8,0.8]);
    set(gca,'XTick',-2:1:2);
    set(gca,'YTick',-0.8:0.4:0.8);
    set(gca,'XTickLabel',{'-2','-1','0','1','2'});
    set(gca,'YTickLabel',{'-0.8','-0.4','0','0.4','0.8'});
    xlabel('自变量t');
    ylabel('函数值');
    titlemsg=sprintf('吉布斯现象N=%d的合成波形',T(k));
    title(titlemsg);
    text(0,-0.5,'\leftarrow 方波函数','HorizontalAlignment','left');
    set(gcf,'Color','w')
    
    figure;
    axis([-2,2,-0.8,0.8]);
    p=plot(t,err);
    xlabel('t');
    ylabel('err');
    titlemsg=sprintf('N=%d的合成方波与实际方波的误差',T(k));
    title(titlemsg);
end
toc

%%
tic
clc;
close all;
clear all;
t=-2:0.01:2;
T=[15,25,55,105,205];
for k=1:length(T)
    a=0;
    for n=1:2:T(k)
        b=exp(1i*n*pi*t)/n;
        a=a+b;
    end
    y=2*a/(1j*pi);
    x=0.5*square(pi*t);
    
    %figure;
    if(k==1)
        p=plot(t,real(y),'c',t,x,'k');
    elseif(k==2)
        p=plot(t,real(y),'m',t,x,'k');
    elseif(k==3)
        p=plot(t,real(y),'r',t,x,'k');
    elseif(k==4)
        p=plot(t,real(y),'b',t,x,'k');
    elseif(k==5)
        p=plot(t,real(y),'g',t,x,'k');
    end

    axis([-2,2,-0.8,0.8]);
    set(gca,'XTick',-2:1:2);
    set(gca,'YTick',-0.8:0.4:0.8);
    set(gca,'XTickLabel',{'-2','-1','0','1','2'});
    set(gca,'YTickLabel',{'-0.8','-0.4','0','0.4','0.8'});
    xlabel('自变量t');
    ylabel('函数值');
    titlemsg=sprintf('将N取5种不同值的结果合成在一张图上');
    title(titlemsg);
    text(0,-0.5,'\leftarrow 方波函数','HorizontalAlignment','left');
    set(gcf,'Color','w')
    hold on
end
toc