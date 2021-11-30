function [L, U, P] = luFactor(A)
[n,n]=size(A); 
L=eye(n); P=L; U=A; 
for k=1:n 
[pivot m]=max(abs(U(k:n,k)));
m=m+k-1;
if m~=k 
temp=U(k,:); 
U(k,:)=U(m,:);
U(m,:)=temp; 
temp=P(k,:);
P(k,:)=P(m,:);
P(m,:)=temp; 
if k >= 2 
temp=L(k,1:k-1);
L(k,1:k-1)=L(m,1:k-1);
L(m,1:k-1)=temp;
end 
if m~=n 
 error('matrix size error')
end 

end
for j=k+1:n 
L(j,k)=U(j,k)/U(k,k);
U(j,:)=U(j,:)-L(j,k)*U(k,:);
end
end
end

