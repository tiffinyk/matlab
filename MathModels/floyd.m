function [k,d,r,minC,minK] = floyd(w)
n=size(w,1);d=w;
for i=1:n
    for j=1:n
        r(i,j)=j;
    end
end
for k=1:n
    for i=1:n
        for j=1:n
            if d(i,k)+d(k,j)<d(i,j)
                d(i,j)=d(i,k)+d(k,j);r(i,j)=r(i,k);
            end
        end
    end
sprintf('%s','迭代次数k:'),k,sprintf('%s','迭代后距离阵d:'),d
end
sprintf('%s','最优路径矩阵r：'),r,C=zeros(1,n);
for i=1:n
    for j=1:n
        C(i)=C(i)+d(i,j);
    end
end
minC=C(1);minK=1;k=2;
while k<n+1
    if minC>C(k)
        minC=C(k);minK=k;
    elseif minC==C(k)
        minK=[[minK],k];
    end
    k=k+1;
end
sprintf('%s','最小航线距离minC'),minC
sprintf('%s','最优顶点编号minK'),minK
        
        

