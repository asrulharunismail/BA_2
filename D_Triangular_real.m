function [ M ] = D_Triangular_real(k,t,b,baris,kolom)
    M=zeros(baris,kolom);
    for i=1:baris
        for j=1:kolom
            M(i,j)=D_Tri_real(k,t,b);
        end
    end
end

function [ angka ] = D_Tri_real(k,t,b)
    m=randi([1 10]);
    a=(t-k)/10;
    b=(b-t)/10;
    
    angka=unifrnd((t-m*a),(t+m*b),1);
    
end