classdef TestFunction38
    properties
        type;                  % type of fitness function 
        lowerBoundaries;       % minimum x and y coordinates
        upperBoundaries;       % maximum x and y coordinates
        dim;                   % number of parameters of function
        optima;                % global maximum
        definedFunctions       % functions defined in this class
    end
    methods
        function obj = TestFunction38(typeOfFunction)
            obj.definedFunctions={'Ackley','Griewangk_10','Griewangk_2','Rastrigin_10','Rosenbrock_10','Rosenbrock_2','Rosenbrock_4',...
                'Goldstein','Martin','Shekel_5','Easom','Schaffer_6','Schwefel_1.2','Sphere','Axis',...
                'Sum_diff_pow','Beale','Colville','Hartmann_1','Hartmann_2',...
                'Levy','Matyas','Perm','Zakharov','Schwefel_2.22','Schwefel_2.21',...
                'Quartic','Kowalik','Shekel_7','Shekel_10','Tripod','DeJong_2','Dejong_4',...
                'Alpine','Pathological','Masters','Step','6humpCamelBack',...
                'Michalewicz_5','Michalewicz_10','Branin','Weierstrass', 'Trid','Powell','MovedHyper'};
            obj.type=typeOfFunction;
            switch(obj.type)
                case 'Ackley_10',
                    obj.dim=10;
                    obj.optima=evaluation(obj,linspace(0,0,10)); 
                    obj.lowerBoundaries=-32; 
                    obj.upperBoundaries=32;
                case 'DeJong_2', 
                    obj.dim=2;
                    obj.optima=evaluation(obj,[1,1]);
                    obj.lowerBoundaries=-1; 
                    obj.upperBoundaries=1.5;
                case 'Goldstein', 
                    obj.dim=2;
                    obj.optima=evaluation(obj,[0,-1]);
                    obj.lowerBoundaries=-2; 
                    obj.upperBoundaries=2;
                case 'Martin', 
                    obj.dim=2;
                    obj.optima=evaluation(obj,linspace(5,5,2)); 
                    obj.lowerBoundaries=0; 
                    obj.upperBoundaries=10;
                case 'Griewangk_10',
                    obj.dim=10;
                    obj.optima=evaluation(obj,linspace(0,0,10)); 
                    obj.lowerBoundaries=-512; 
                    obj.upperBoundaries=512;
                case 'Griewangk_2',
                    obj.dim=2;
                    obj.optima=evaluation(obj,linspace(0,0,2)); 
                    obj.lowerBoundaries=-512; 
                    obj.upperBoundaries=512;
                case 'Rastrigin_10',
                    obj.dim=10;
                    obj.optima=evaluation(obj,linspace(0,0,10)); 
                    obj.lowerBoundaries= -5.12; 
                    obj.upperBoundaries= 5.12;
                case 'Rosenbrock_10',
                    obj.dim=10;
                    obj.optima=evaluation(obj,linspace(1,1,10)); 
                    obj.lowerBoundaries= -1.2; 
                    obj.upperBoundaries= 1.2;
                case 'Rosenbrock_2',
                    obj.dim=2;
                    obj.optima=evaluation(obj,linspace(1,1,2)); 
                    obj.lowerBoundaries= -1.2; 
                    obj.upperBoundaries= 1.2;
                case 'Rosenbrock_4',
                    obj.dim=4;
                    obj.optima=evaluation(obj,linspace(1,1,4)); 
                    obj.lowerBoundaries= -1.2; 
                    obj.upperBoundaries= 1.2;
                case {'Shekel_5','Shekel_7'}, 
                    obj.dim=9;
                    obj.optima=evaluation(obj,linspace(4,4,9)); 
                    obj.lowerBoundaries=0; 
                    obj.upperBoundaries=10;
                case 'Shekel_4',
                    obj.dim=4;
                    obj.optima=evaluation(obj,linspace(4,4,4)); 
                    obj.lowerBoundaries=0; 
                    obj.upperBoundaries=10;
                case 'Shekel_10',
                    obj.dim=10;
                    obj.optima=evaluation(obj,linspace(4,4,10));
                    obj.lowerBoundaries=0; 
                    obj.upperBoundaries=10;
                case 'Easom', 
                    obj.dim=2;
                    obj.optima=evaluation(obj,[pi, pi]);
                    obj.lowerBoundaries= -100; 
                    obj.upperBoundaries= 100;
                case 'Schaffer_6',
                    obj.dim=2;
                    obj.optima=evaluation(obj,[0, 0]);
                    obj.lowerBoundaries=-10; 
                    obj.upperBoundaries=10;
                case 'Schwefel_2',
                    obj.dim=2;
                    obj.optima=evaluation(obj,[420.9687 420.9687]);
                    obj.lowerBoundaries=-500; 
                    obj.upperBoundaries=500;
                case 'Schwefel_1.2', 
                    obj.dim=2;
                    obj.optima=evaluation(obj,linspace(0,0,2));
                    obj.lowerBoundaries=-65; 
                    obj.upperBoundaries=65;
                case 'Schwefel_2.22', 
                    obj.dim=10;
                    obj.optima=evaluation(obj,linspace(0,0,10));
                    obj.lowerBoundaries= -10; 
                    obj.upperBoundaries= 10;
                case 'Schwefel_2.21', 
                    obj.dim=10;
                    obj.optima=evaluation(obj,linspace(0,0,10));
                    obj.lowerBoundaries= -100; 
                    obj.upperBoundaries= 100;
                case {'Axis','Sphere'}, 
                    obj.dim=30;
                    obj.optima=evaluation(obj,linspace(0,0,30));
                    obj.lowerBoundaries= -5.12; 
                    obj.upperBoundaries= 5.12;
                case 'Sphere_6', 
                    obj.dim=6;
                    obj.optima=evaluation(obj,linspace(0,0,6));
                    obj.lowerBoundaries= -5.12; 
                    obj.upperBoundaries= 5.12;
                case 'Sphere_10', 
                    obj.dim=10;
                    obj.optima=evaluation(obj,linspace(0,0,10));
                    obj.lowerBoundaries= -5.12; 
                    obj.upperBoundaries= 5.12;
                case 'Sum_diff_pow', 
                    obj.dim=30;
                    obj.optima=evaluation(obj,linspace(0,0,30));
                    obj.lowerBoundaries= -1; 
                    obj.upperBoundaries= 1;
                case 'Beale', 
                    obj.dim=2;
                    obj.optima=evaluation(obj,[3,0.5]);
                    obj.lowerBoundaries= -4.5; 
                    obj.upperBoundaries= 4.5;
                case 'Colville', 
                    obj.dim=4;
                    obj.optima=evaluation(obj,linspace(1,1,4));
                    obj.lowerBoundaries= -10; 
                    obj.upperBoundaries= 10;
                case 'Hartmann_1',
                    obj.dim=3;
                    obj.optima=evaluation(obj,[0.114614,0.555649,0.852547]);
                    obj.lowerBoundaries= 0; 
                    obj.upperBoundaries= 1;
                case 'Hartmann_2',
                    obj.dim=6;
                    obj.optima=evaluation(obj,[0.20169,0.150011,0.476874,0.275332,0.311652,0.6573]);%optima=3.32237
                    obj.lowerBoundaries= 0; 
                    obj.upperBoundaries= 1;
                case 'Levy', 
                    obj.dim=30;
                    obj.optima=evaluation(obj,linspace(1,1,30));
                    obj.lowerBoundaries= -10; 
                    obj.upperBoundaries= 10;
                case 'Matyas', 
                    obj.dim=2;
                    obj.optima=evaluation(obj,linspace(0,0,2));
                    obj.lowerBoundaries= -10; 
                    obj.upperBoundaries= 10;
                case 'Perm', 
                    obj.dim=4;
                    obj.optima=evaluation(obj,[1,2,3,4]);
                    obj.lowerBoundaries= -4; 
                    obj.upperBoundaries= 4;
                case 'Zakharov', 
                    obj.dim=10;
                    obj.optima=evaluation(obj,linspace(0,0,10));
                    obj.lowerBoundaries= -5; 
                    obj.upperBoundaries= 10;
                case 'Quartic', 
                    obj.dim=30;
                    obj.optima=evaluation(obj,linspace(0,0,30));
                    obj.lowerBoundaries= -1.28; 
                    obj.upperBoundaries= 1.28;
                case 'Kowalik', 
                    obj.dim=4;
                    obj.optima=evaluation(obj,[0.19,0.19,0.12,0.14]);
                    obj.lowerBoundaries= -5; 
                    obj.upperBoundaries= 5;
                case 'Tripod', 
                    obj.dim=2;
                    obj.optima=evaluation(obj,[0,-50]); 
                    obj.lowerBoundaries= -100; 
                    obj.upperBoundaries= 100;
                case 'Dejong_4', 
                    obj.dim=2;
                    obj.optima=evaluation(obj,[0,0]); 
                    obj.lowerBoundaries= -2.048; 
                    obj.upperBoundaries= 2.048;
                case 'Alpine', 
                    obj.dim=2;
                    obj.optima=evaluation(obj,linspace(0,0,2)); 
                    obj.lowerBoundaries= -10; 
                    obj.upperBoundaries= 10;
                case 'Pathological', 
                    obj.dim=5;
                    obj.optima=evaluation(obj,linspace(0,0,5)); 
                    obj.lowerBoundaries= -100; 
                    obj.upperBoundaries= 100;
                case 'Masters', 
                    obj.dim=5;
                    obj.optima=evaluation(obj, linspace(0,0,5)); 
                    obj.lowerBoundaries= -5; 
                    obj.upperBoundaries= 5;
                case '6humpCamelBack', 
                    obj.dim=2;
                    obj.optima=evaluation(obj,[0.0898,-0.7126]);
                    obj.lowerBoundaries= -5; 
                    obj.upperBoundaries= 5;
                case 'Branin'
                    obj.dim=2;
                    obj.optima=evaluation(obj,[-pi,12.275]);
                    obj.lowerBoundaries= -5; 
                    obj.upperBoundaries= 10 ;
                case 'Step',
                    obj.dim=30;
                    obj.optima=evaluation(obj,linspace(0,0,30)); 
                    obj.lowerBoundaries= -100; 
                    obj.upperBoundaries= 100; 
                case 'Weierstrass', 
                    D=30;
                    obj.dim=D;
                    obj.optima=evaluation(obj,linspace(0,0,D)); 
                    obj.lowerBoundaries= -100; 
                    obj.upperBoundaries= 100; 
                case 'Michalewicz_10',
                    obj.dim=10;
                    obj.optima=-9.66015;
                    obj.lowerBoundaries=0; 
                    obj.upperBoundaries= pi; 
                case 'Michalewicz_5',
                    obj.dim=5;
                    obj.optima=-4.687658;
                    obj.lowerBoundaries=0; 
                    obj.upperBoundaries= pi; 
                case 'Trid', 
                    obj.dim=6;
                    obj.optima=-50;
                    obj.lowerBoundaries= -36;  
                    obj.upperBoundaries= 36; 
                case 'Powell',
                    obj.dim=24;
                    obj.optima=0;
                    obj.lowerBoundaries= -4;  
                    obj.upperBoundaries= 5; 
                case'MovedHyper',
                    obj.dim = 20;
                    obj.optima = evaluation(obj,linspace(0,0,20));
                    obj.lowerBoundaries = -5.12; 
                    obj.upperBoundaries = 5.12; 
                case'MovedHyper_10',
                    obj.dim = 10;
                    obj.optima = evaluation(obj,linspace(0,0,10));
                    obj.lowerBoundaries = -5.12; 
                    obj.upperBoundaries = 5.12;  
              otherwise,
                disp('fitness function not defined');
             end
        end
        function fitness = evaluation(obj, x)
            global eval;
            eval = eval+1;
            switch (obj.type)
                case 'Ackley_10', 
                    n = 2;
                    a = 20; b = 0.2; c = 2*pi;
                    s1 = 0; s2 = 0;
                    for i=1:n;
                       s1 = s1+x(i)^2;
                       s2 = s2+cos(c*x(i));
                    end
                    y = -a*exp(-b*sqrt(1/n*s1))-exp(1/n*s2)+a+exp(1);
                    fitness=y;
                case 'DeJong_2', 
                    x1=x(1);
                    x2=x(2);
                    c1=(3905.93)-100*(x1^2-x2)^2-(1-x1^2);
                    fitness=-c1;
                case 'Goldstein',
                    a = 1+(x(1)+x(2)+1)^2*(19-14*x(1)+3*x(1)^2-14*x(2)+6*x(1)*x(2)+3*x(2)^2);
                    b = 30+(2*x(1)-3*x(2))^2*(18-32*x(1)+12*x(1)^2+48*x(2)-36*x(1)*x(2)+27*x(2)^2);
                    y = a*b;
                    fitness=y;
                case 'Martin', 
                    x1=x(1);
                    x2=x(2);
                    z=(x1-x2)^2 + ((x1+x2-10)/3)^2;
                    fitness=z;
                case 'Griewangk_10',
                    n = 10;
                    fr = 4000;
                    s = 0;
                    p = 1;
                    for j = 1:n; s = s+x(j)^2; end
                    for j = 1:n; p = p*cos(x(j)/sqrt(j)); end
                    y = s/fr-p+1;
                    fitness=y;
                case 'Griewangk_2',
                    n = 2;
                    fr = 4000;
                    s = 0;
                    p = 1;
                    for j = 1:n; s = s+x(j)^2; end
                    for j = 1:n; p = p*cos(x(j)/sqrt(j)); end
                    y = s/fr-p+1;
                    fitness=y;
                case 'Rastrigin_10',
                    n = 10; 
                    s = 0;
                    for j = 1:n
                        s = s+(x(j)^2-10*cos(2*pi*x(j))); 
                    end
                    y = 10*n+s;
                    fitness=y;
                case 'Rosenbrock_10',
                    n = 10;
                    c1 = 0;
                    for j = 1:n-1;
                        c1 = c1+100*(x(j)^2-x(j+1))^2+(x(j)-1)^2;
                    end
                    y = c1;
                    fitness=y;
                case 'Rosenbrock_2',
                    n = 2;
                    c1 = 0;
                    for j = 1:n-1;
                        c1 = c1+100*(x(j)^2-x(j+1))^2+(x(j)-1)^2;
                    end
                    y = c1;
                    fitness=y;
                case 'Rosenbrock_4',
                    n = 4;
                    c1 = 0;
                    for j = 1:n-1;
                        c1 = c1+100*(x(j)^2-x(j+1))^2+(x(j)-1)^2;
                    end
                    y = c1;
                    fitness=y;
                case 'Shekel_5',
                    A=[ 4 4 4 4;
                        1 1 1 1;
                        8 8 8 8;
                        6 6 6 6;
                        3 7 3 7 ];
                    C=[ 0.1;0.2;0.2;0.4;0.4 ];
                    c1=0;
                    for i=1:5
                        c1=c1-1/(C(i)+sum((x-A(i,:)).^2));
                    end
                    fitness=c1;
                case 'Shekel_7',
                    A=[ 4 4 4 4;
                        1 1 1 1;
                        8 8 8 8;
                        6 6 6 6;
                        3 7 3 7;
                        2 9 2 9;
                        5 5 3 3];
                    C=[ 0.1;0.2;0.2;0.4;0.4;0.6;0.3 ];
                    c1=0;
                    for i=1:7
                        c1=c1-1/(C(i)+sum((x-A(i,:)).^2));
                    end
                    fitness=c1;
                case 'Shekel_10',
                    A=[ 4 4 4 4;
                        1 1 1 1;
                        8 8 8 8;
                        6 6 6 6;
                        3 7 3 7;
                        2 9 2 9;
                        5 5 3 3;
                        8 1 8 1;
                        6 2 6 2;
                        7 3.6 7 3.6];
                    C=[ 0.1;0.2;0.2;0.4;0.4;0.6;0.3;0.7;0.5;0.5 ];
                    c1=0;
                    for i=1:10
                        c1=c1-1/(C(i)+sum((x-A(i,:)).^2));
                    end
                    fitness=c1;
                case 'Easom', 
                    y = -cos(x(1))*cos(x(2))*exp(-(x(1)-pi)^2-(x(2)-pi)^2);
                    fitness=y;
                case 'Schaffer_6',
                    s=sum(x.^2);
                    f1=sin(sqrt(s))^2-0.5;
                    f2=(1+0.01*s)^2;
                    c1=0.5+f1/f2;
                    fitness=c1;
                case 'Schwefel_2',
                    n = 2;
                    s = sum(-x.*sin(sqrt(abs(x))));
                    y = 418.9829*n+s;
                    fitness=y;
                case 'Schwefel_1.2',
                    c1=0;
                    for i=1:2
                        c1=c1+sum(x(1:i)).^2;
                    end
                    fitness=c1;
                case 'Schwefel_2.22',
                    f1=sum((abs(x)));
                    f2=prod((abs(x)));
                    fitness=(f1+f2);
                case 'Schwefel_2.21',
                    f=abs(x);
                    c1=max(f);
                    fitness=c1;
                case 'Axis', 
                    f = zeros(1,10);
                        for i=1:10
                            f(i)=i*x(i)^2;
                        end
                    fitness = sum(f);
                case 'Sphere', 
                    c1=sum(x.^2);  
                    fitness=c1;
                case 'Sphere_6', 
                    c1=sum(x.^2);  
                    fitness=c1;
                case 'Sphere_10', 
                    c1=sum(x.^2);  
                    fitness=c1;
                case 'Sum_diff_pow', 
                    f = zeros (1,30);
                        for i= 1:30
                            f(i)=abs(x(i)).^(i+1);
                        end
                    fitness=sum(f);                        
                case 'Beale', 
                    f1=(1.5-x(1)*(1-x(2)))^2;
                    f2=(2.25-x(1)*(1-x(2)^2))^2;
                    f3=(2.625-x(1)*(1-x(2)^3))^2;
                    fitness=(f1+f2+f3);
                case 'Colville', 
                    f1=100*(x(2)-x(1)^2)^2+(1-x(1))^2;
                    f2=90*(x(4)-x(3)^2)^2+(1-x(3))^2;
                    f3=10.1*((x(2)-1)^2+(x(4)-1)^2);
                    f4=19.8*(x(2)-1)*(x(4)-1);
                    fitness=(f1+f2+f3+f4);
                case 'Hartmann_1',
                    a=[1;1.2;3;3.2];
                    A=[ 3 10 30;
                        0.1 10 35;
                        3 10 30;
                        0.1 10 35 ];
                    P=[ 0.3689 0.117 0.2673;
                        0.4699 0.4387 0.747;
                        0.1091 0.8732 0.5547;
                        0.03815 0.5743 0.8828 ];
                    c1=0;
                    for i=1:4;
                        f=0;
                        for j=1:3;
                            f=f+A(i,j)*(x(j)-P(i,j))^2;
                        end
                        c1=c1-a(i)*exp(-f);
                    end
                    fitness=c1;                
                case 'Hartmann_2',
                    a=[1;1.2;3;3.2];
                    B=[ 10 3 17 3.5 1.7 8;
                        0.05 10 17 0.1 8 14;
                        3 3.5 1.7 10 17 8;
                        17 8 0.05 10 0.1 14 ];
                    Q=[ 0.1312 0.1696 0.5569 0.0124 0.8283 0.5886;
                        0.2329 0.4135 0.8307 0.3736 0.1004 0.9991;
                        0.2348 0.1451 0.3522 0.2883 0.3047 0.665;
                        0.4047 0.8828 0.8732 0.5743 0.1091 0.00381 ];
                    c1=0;
                    for i=1:4;
                        f=0;
                        for j=1:6;
                            f=f+B(i,j)*(x(j)-Q(i,j))^2;
                        end
                        c1=c1-a(i)*exp(-f);
                    end
                    fitness=c1;                
                case 'Levy', 
                    f1=(sin(3*pi*x(1)))^2;
                    f2=0;
                    for i=2:30;
                        f2=f2+(x(i-1)-1)^2*(1+(sin(3*pi*x(i)))^2);
                    end
                    f3=(x(30)-1)*(1+(sin(2*pi*x(30)))^2);
                    fitness=(f1+f2+f3);
                case 'Matyas', 
                    f1=0.26*sum(x.^2);
                    f2=0.48*prod(x);
                    fitness=(f1-f2);
                case 'Perm', 
                    c1=0;
                    for k=1:4
                        f=0;
                        for j=1:4
                            f=f+(j^k+0.5)*(((x(j)/j)^k)-1);
                        end
                           c1=c1+f^2;
                    end
                    fitness=c1;
                case 'Zakharov', 
                    f1=sum(x.^2);
                    f2=0;
                    for i=1:10
                        f2=f2+0.5*i*x(i);
                    end
                    fitness=(f1+f2^2+f2^4);
                case 'Quartic', 
                    f1=zeros(1,30);
                       for i=1:30
                           f1(i)=i*x(i).^4;
                       end
                    fitness = (sum(f1)+rand());
                case 'Kowalik', 
                    a=[0.1957;0.1947;0.1735;0.16;0.0844;0.0627;0.0456;0.0342;0.0323;0.0235;0.0246];
                    b=[0.25;0.50;1.0;2.0;4.0;6.0;8.0;10.0;12.0;14.0;16.0];
                    f=0;
                    for i=1:11
                        f=f+a(i)-(x(1)*(b(i)^2+b(i)*x(2))/(b(i)^2+b(i)*x(3)+x(4)));
                    end
                    fitness=sum(f.^2);
                case 'Tripod', 
                    px1=((x(1))>=0);
                    px2=((x(2))>=0);
                    c1=(px2.*(1+px1)+abs(x(1)+50*px2.*(1-2*px1))+abs(x(2)+50*(1-2.*px2)));
                    fitness=c1;
                case 'Dejong_4', 
                    f1=zeros(1,2);
                    for i=1:2
                        f1(i)=i*x(i).^4;
                    end
                    fitness=sum(f1);
                case 'Alpine', 
                    c1=sum(abs(x.*sin(x)+0.1*x));
                    fitness=c1;                
                case 'Pathological', 
                    c1=0;
                    for i=2:5;
                        f1=sqrt(100*x(i-1).^2+x(i).^2);
                        f2=sin(f1).^2-0.5;
                        f3=1+0.001*(x(i-1).^2-2*x(i-1)*x(i)+x(i).^2).^2;
                        c1=c1+0.5+(f2/f3);
                    end
                    fitness=c1;
                case 'Masters', 
                    c1=0;
                    for i=2:5;
                        f1=x(i-1).^2+x(i).^2+0.5*x(i-1)*x(i);
                        f2=exp(-f1./8);
                        f3=cos(4*sqrt(f1));
                        c1=c1-f2*f3;
                    end
                    fitness=c1;
                case '6humpCamelBack',
                    c1=4*x(1)^2-2.1*x(1)^4+(1/3)*x(1)^6+x(1)*x(2)-4*x(2)^2+4*x(2)^4;
                    fitness=c1;
                case 'Branin',
                    a=1; b=5.1/(4*pi^2); c=5/pi; d=6; e=10; f=1/(8*pi);
                    c1=a*(x(2)-b*x(1)^2+c*x(1)-d)^2+e*(1-f)*cos(x(1))+e;
                    fitness=c1;
                case 'Step',
                    c1=0;
                    for i=1:30
                        f1=floor(x(i)+0.5);
                        c1=c1+(f1*f1);
                    end
                    fitness=c1;
                case 'Weierstrass',
                    c1=0;
                    D=30;
                    for i=1:D
                        for k=0:20
                            c1=c1+0.5^k*cos(2*pi*3^k*(x(i)+0.5));
                        end
                    end
                    temp=0;
                    for k=0:20
                        temp=temp+0.5^k*cos(2*pi*3^k*0.5);
                    end
                    c1=c1-D*temp;
                    fitness=-c1; 
                case'Michalewicz_10',
                    n = 10; 
                    m = 10;
                    s = 0;
                    for i = 1:n;
                        s = s+sin(x(i))*(sin(i*x(i)^2/pi))^(2*m);
                    end
                    y = -s;
                    fitness=y;
                case'Michalewicz_5',
                    n = 5; 
                    m = 10;
                    s = 0;
                    for i = 1:n;
                        s = s+sin(x(i))*(sin(i*x(i)^2/pi))^(2*m);
                    end
                    y = -s;
                    fitness=y;
                case 'Trid',
                    s1 = 0;
					s2 = 0;
					for j = 1:6;
						s1 = s1+(x(j)-1)^2;    
					end
					for j = 2:6;
						s2 = s2+x(j)*x(j-1);    
					end
					y = s1-s2;
                    fitness=y;
                case 'Powell',
                    f1 = 0;
                    for ii = 1:(24/4)
                        term1 = (x(4*ii-3) + 10*x(4*ii-2))^2;
                        term2 = 5 * (x(4*ii-1) - x(4*ii))^2;
                        term3 = (x(4*ii-2) - 2*x(4*ii-1))^4;
                        term4 = 10 * (x(4*ii-3) - x(4*ii))^4;
                        f1 = f1 + term1 + term2 + term3 + term4;
                    end
                    y = f1;
                    fitness=y;
                case'MovedHyper',
                    f=zeros(1,20);
                    for i=1:20
                        f(i)=5*i*x(i).^2;
                    end
                    c1 = sum(f);
                    fitness = c1;
                case'MovedHyper_10',
                    f=zeros(1,10);
                    for i=1:10
                        f(i)=5*i*x(i).^2;
                    end
                    c1 = sum(f);
                    fitness = c1;
                otherwise,
                    disp('fitness function not defined');   
            end
        end
    end
end