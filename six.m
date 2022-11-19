function dx = six(t,x,k)
    

a12=1; a13=1; a14=0; a15=0; 
a21=1; a23=0; a24=1; a25=0; 
a31=1; a32=0; a34=0; a35=1; 
a41=0; a42=1; a43=0; a45=1; 
a51=0; a52=0; a53=1; a54=1; 

%%%%%%  %%%%%%
y1d=sin(t);dy1d=cos(t); 


a1(1)=exp(-(x(1)-4)^2/2);
a1(2)=exp(-(x(1)-2)^2/2);
a1(3)=exp(-(x(1))^2/2);
a1(4)=exp(-(x(1)+2)^2/2);
a1(5)=exp(-(x(1)+4)^2/2);
a1=a1/sum(a1);
b1(1)=exp(-(x(1)-4)^2/2)*exp(-(x(2)-4)^2/2);
b1(2)=exp(-(x(1)-2)^2/2)*exp(-(x(2)-2)^2/2);
b1(3)=exp(-(x(1))^2/2)*exp(-(x(2))^2/2);
b1(4)=exp(-(x(1)+2)^2/2)*exp(-(x(2)+2)^2/2);
b1(5)=exp(-(x(1)+4)^2/2)*exp(-(x(2)+4)^2/2);
b1=b1/sum(b1);
a2(1)=exp(-(x(3)-4)^2/2);
a2(2)=exp(-(x(3)-2)^2/2);
a2(3)=exp(-(x(3))^2/2);
a2(4)=exp(-(x(3)+2)^2/2);
a2(5)=exp(-(x(3)+4)^2/2);
a2=a2/sum(a2);
b2(1)=exp(-(x(3)-4)^2/2)*exp(-(x(4)-4)^2/2);
b2(2)=exp(-(x(3)-2)^2/2)*exp(-(x(4)-2)^2/2);
b2(3)=exp(-(x(3))^2/2)*exp(-(x(4))^2/2);
b2(4)=exp(-(x(3)+2)^2/2)*exp(-(x(4)+2)^2/2);
b2(5)=exp(-(x(3)+4)^2/2)*exp(-(x(4)+4)^2/2);
b2=b2/sum(b2);
a3(1)=exp(-(x(5)-4)^2/2);
a3(2)=exp(-(x(5)-2)^2/2);
a3(3)=exp(-(x(5))^2/2);
a3(4)=exp(-(x(5)+2)^2/2);
a3(5)=exp(-(x(5)+4)^2/2);
a3=a3/sum(a3);
b3(1)=exp(-(x(5)-4)^2/2)*exp(-(x(6)-4)^2/2);
b3(2)=exp(-(x(5)-2)^2/2)*exp(-(x(6)-2)^2/2);
b3(3)=exp(-(x(5))^2/2)*exp(-(x(6))^2/2);
b3(4)=exp(-(x(5)+2)^2/2)*exp(-(x(6)+2)^2/2);
b3(5)=exp(-(x(5)+4)^2/2)*exp(-(x(6)+4)^2/2);
b3=b3/sum(b3);
a4(1)=exp(-(x(7)-4)^2/2);
a4(2)=exp(-(x(7)-2)^2/2);
a4(3)=exp(-(x(7))^2/2);
a4(4)=exp(-(x(7)+2)^2/2);
a4(5)=exp(-(x(7)+4)^2/2);
a4=a4/sum(a4);
b4(1)=exp(-(x(7)-4)^2/2)*exp(-(x(8)-4)^2/2);
b4(2)=exp(-(x(7)-2)^2/2)*exp(-(x(8)-2)^2/2);
b4(3)=exp(-(x(7))^2/2)*exp(-(x(8))^2/2);
b4(4)=exp(-(x(7)+2)^2/2)*exp(-(x(8)+2)^2/2);
b4(5)=exp(-(x(7)+4)^2/2)*exp(-(x(8)+4)^2/2);
b4=b4/sum(b4);

theta11=x(9);
theta12=x(10);
theta21=x(11);
theta22=x(12);
theta31=x(13);
theta32=x(14);
theta41=x(15);
theta42=x(16);

r11=x(17);r21=x(18);r31=x(19);r41=x(20);
r12=x(21);r22=x(22);r32=x(23);r42=x(24);

q1=17/21;q2=13/21;
c11=20; c12=20; c21=20; c22=20; c31=20; c32=20; c41=20;c42=20;
v1=2;v2=2;v3=2;v4=2;
cigema11=0.01;cigema12=0.01; cigema21=0.01;cigema22=0.01; cigema31=0.01;cigema32=0.01;cigema41=0.01;cigema42=0.01;
gama11=0.1;gama12=0.1;gama21=0.1;gama22=0.1;gama31=0.1;gama32=0.1;gama41=0.1;gama42=0.1; 
fa11=0.1;fa12=0.1;fa21=0.1;fa22=0.1;fa31=0.1;fa32=0.1;fa41=0.1;fa42=0.1;
w11=0.1;w21=0.1;w31=0.1;w41=0.1;
m12=0.08;m22=0.08;m32=0.08;m42=0.08;
d12=1;d22=1;d32=1;d42=1;
B1=1;B2=1;B3=1;B4=1;
%%%%%%%%%%   
z11=a12*(x(1)-x(3))+a13*(x(1)-x(5))+a14*(x(1)-x(7))+a15*(x(1)-y1d);
alpha11=(1/v1)*(-c11*z11^(q1)-w11*z11^(q1+2)+B1*dy1d/v1-v1^2*norm(theta11)*z11^2-(r11*z11)/((z11^2+cigema11^2)^0.5)); 
z12=(x(2)-x(25))^q1-(x(25)-alpha11)^q1;
u1=-c12*z12^q2-d12*z11^(q2+2)-(theta12*z12^(4-2*q2))/(((z12^(4-2*q2))*norm(b1'*b1))^0.5)-(r12*z12^(4-2*q2))/(((z12^(4-2*q2))+cigema12^2)^0.5);
%%%%%%%%%
z21=a21*(x(3)-x(1))+a23*(x(3)-x(5))+a24*(x(3)-x(7))+a25*(x(3)-y1d);
alpha21=(1/v2)*(-c21*z21^(q1)-w21*z11^(q1+2)+B2*dy1d/v2-v2^2*norm(theta21)*z21^2-(r21*z21)/((z21^2+cigema21^2)^0.5)); 
z22=(x(3)-x(26))^q1-(x(26)-alpha21)^q1;
u2=-c22*z22^q2-d22*z21^(q2+2)-(theta22*z22^(4-2*q2))/(((z22^(4-2*q2))*norm(b2'*b2))^0.5)-(r22*z21^(4-2*q2))/(((z22^(4-2*q2))+cigema22^2)^0.5);
%%%%%%%%%%
z31=a31*(x(5)-x(1))+a32*(x(5)-x(3))+a34*(x(5)-x(7))+a35*(x(5)-y1d);
alpha31=(1/v3)*(-c31*z31^(q1)-w31*z31^(q1+2)+B3*dy1d/v3-v3^2*norm(theta31)*z31^2-(r31*z31)/((z31^2+cigema31^2)^0.5)); 
z32=(x(5)-x(27))^q1-(x(27)-alpha31)^q1;
u3=-c32*z32^q2-d32*z31^(q2+2)-(theta32*z32^(4-2*q2))/(((z32^(4-2*q2))*norm(b3'*b3))^0.5)-(r32*z31^(4-2*q2))/(((z32^(4-2*q2))+cigema32^2)^0.5);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
z41=a41*(x(5)-x(1))+a42*(x(5)-x(3))+a43*(x(7)-x(5))+a45*(x(7)-y1d);
alpha41=(1/v4)*(-c41*z41^(q1)-w41*z41^(q1+2)+B4*dy1d/v4-v1^2*norm(theta41)*z41^2-(r41*z41)/((z41^2+cigema41^2)^0.5)); 
z42=(x(7)-x(28))^q1-(x(28)-alpha41)^q1;
u4=-c42*z42^q2-d42*z41^(q2+2)-(theta42*z42^(4-2*q2))/(((z42^(4-2*q2))*norm(b4'*b4))^0.5)-(r42*z41^(4-2*q2))/(((z42^(4-2*q2))+cigema42^2)^0.5);


f11=2*x(1)^4*exp(-x(1)^4);
f12=2*x(1)^4*exp(-x(2)^4);
f21=2*x(3)^4*exp(-x(3)^4); 
f22=2*x(3)^4*exp(-x(4)^4);
f31=2*x(5)^4*exp(-x(5)^4);
f32=2*x(5)^4*exp(-x(6)^4);
f41=2*x(7)^4*exp(-x(7)^4);
f42=2*x(7)^4*exp(-x(8)^4);

dx=[x(2)+f11+0.01*sin(t);
      u1+f12+0.01*sin(t);
      
      x(4)+f21+0.01*sin(t);
      u2+f22+0.01*sin(t);
      
      x(6)+f31+0.01*sin(t);
      u3+f32+0.01*sin(t);
      
      x(8)+f41+0.1*sin(t);
      u4+f42+0.1*sin(t);
-gama11*cigema11*norm(theta11)+((v1^2)*gama11*(z11^2))/(((z11^2)*norm(a1'*a1)+cigema11^2)^0.5);
-gama12*cigema12*norm(theta12)+gama12*(z12^(2-q2))/(((z12^(4-2*q2))*norm(b1'*b1)+cigema12^2)^0.5);
-gama21*cigema41*norm(theta41)+((v2^2)*gama21*(z21^2))/(((z21^2)*norm(a2'*a2)+cigema21^2)^0.5);
-gama22*cigema22*norm(theta22)+gama22*(z22^(2-q2))/(((z22^(4-2*q2))*norm(b2'*b2)+cigema22^2)^0.5);
-gama31*cigema41*norm(theta11)+((v3^2)*gama31*(z31^2))/(((z31^2)*norm(a3'*a3)+cigema31^2)^0.5);
-gama32*cigema32*norm(theta32)+gama32*(z32^(2-q2))/(((z32^(4-2*q2))*norm(b3'*b3)+cigema32^2)^0.5);
-gama41*cigema41*norm(theta41)+((v4^2)*gama41*(z41^2))/(((z41^2)*norm(a4'*a4)+cigema41^2)^0.5);
-gama42*cigema42*norm(theta42)+gama42*(z42^(2-q2))/(((z42^(4-2*q2))*norm(b4'*b4)+cigema42^2)^0.5);

-fa11*cigema11*r11+fa11*z11^(2-q2)/(((z11^(4-2*q2))+cigema11^2)^0.5);
-fa12*cigema12*r12+fa12*z12^(2-q2)/(((z12^(4-2*q2))+cigema12^2)^0.5);
-fa21*cigema21*r21+fa21*z21^(2-q2)/(((z21^(4-2*q2))+cigema21^2)^0.5);
-fa22*cigema22*r22+fa22*z22^(2-q2)/(((z22^(4-2*q2))+cigema22^2)^0.5);
-fa31*cigema31*r31+fa31*z31^(2-q2)/(((z31^(4-2*q2))+cigema31^2)^0.5);
-fa32*cigema32*r32+fa32*z32^(2-q2)/(((z32^(4-2*q2))+cigema32^2)^0.5);
-fa41*cigema41*r41+fa41*z41^(2-q2)/(((z41^(4-2*q2))+cigema41^2)^0.5);
-fa42*cigema42*r42+fa42*z42^(2-q2)/(((z42^(4-2*q2))+cigema42^2)^0.5);

-(x(25)-alpha11)/m12;
-(x(26)-alpha21)/m22;
-(x(27)-alpha31)/m32;
-(x(28)-alpha41)/m42;
];
  
end