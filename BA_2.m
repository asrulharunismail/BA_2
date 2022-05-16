clc;
clear;
close all;
tic
%% Problem Definition
[typeOfFunction] = 'Rastrigin_10';
Instance=TestFunction38(typeOfFunction);  %{'Ackley','Griewangk_10','Griewangk_2','Rastrigin_10','Rosenbrock_10','Rosenbrock_2','Rosenbrock_4',...
                %'Goldstein','Martin','Shekel_5','Easom','Schaffer_6','Schwefel_1.2','Sphere','Axis',...
                %'Sum_diff_pow','Beale','Colville','Hartmann_1','Hartmann_2',...
                %'Levy','Matyas','Perm','Zakharov','Schwefel_2.22','Schwefel_2.21',...
                %'Quartic','Kowalik','Shekel_7','Shekel_10','Tripod','DeJong_2','Dejong_4',...
                %'Alpine','Pathological','Masters','Step','6humpCamelBack',...
                %'Michalewicz_5','Michalewicz_10','Branin','Weierstrass', 'Trid','Powell','MovedHyper'}
Dims=Instance.dim;
ObjFunction=@(x) Instance.evaluation( x ); % Objective Function
VarSize=[1 Dims]; % Decision Variables Matrix Size
VarMin=Instance.lowerBoundaries; % Decision Variables Lower Bound
VarMax=Instance.upperBoundaries; % Decision Variables Upper Bound
range=VarMax-VarMin;
%% Bees Algorithm Parameters
n = 7; nep = 30; Shrink = 0.99; 
MaxEval = 1000000; accuracy = 0.001;
recruitment = round(linspace(nep,1,n));
assigntment = linspace(0,1,n);
ColonySize=sum(recruitment);        
MaxIt=round(MaxEval/ColonySize);    
%% Initialization
Empty_Bees.Position=[];
Empty_Bees.Cost=[];
Empty_Bees.Size=[];
Empty_Bees.Stagnated =[];
Empty_Bees.counter=[];
Bees=repmat(Empty_Bees,n,1);
counter=0;
% Generate Initial Solutions
for i=1:n
    Bees(i).Position=unifrnd(VarMin,VarMax,VarSize);
    Bees(i).Cost=ObjFunction(Bees(i).Position);
    Bees(i).Size = range;
    Bees(i).Stagnated = 0;
    counter=counter+1;
    Bees(i).counter= counter;
end
size = linspace(0,1,n);
%% Sites Selection 
[~, RankOrder]=sort([Bees.Cost]);
Bees=Bees(RankOrder);
BestSol.Cost=inf;

%% Bees Algorithm Local and Global Search
for it=1:MaxIt
    if counter >= MaxEval
        break;
    end
    % All Sites (Exploitation and Exploration)
    for i=1:n
        bestnewbee.Cost=inf;
        assigntment=D_Triangular_real(0,size(i),1,1,recruitment(i));
        for j=1:recruitment(i)
            newbee.Position= Foraging(Bees(i).Position,assigntment(j),VarMax,VarMin,Bees(i).Size);
            newbee.Cost=ObjFunction(newbee.Position);
            newbee.Size= Bees(i).Size;
            newbee.Stagnated = Bees(i).Stagnated;
            counter=counter+1;
            newbee.counter= counter;
            if newbee.Cost<bestnewbee.Cost
                bestnewbee=newbee;
            end
        end
        if bestnewbee.Cost<Bees(i).Cost
            Bees(i)=bestnewbee;
            Bees(i).Stagnated=0;
        else
            Bees(i).Stagnated=Bees(i).Stagnated+1;
            Bees(i).Size=Bees(i).Size*Shrink;
        end
        
    end
    % SORTING
    [~, RankOrder]=sort([Bees.Cost]);
    Bees=Bees(RankOrder);
    % Update Best Solution Ever Found
    OptSol=Bees(1);
    if OptSol.Cost < BestSol.Cost
        BestSol=OptSol;
    end
    % taking of result
    OptCost(it)=BestSol.Cost;
    Counter(it)=counter;
    Time(it)=toc;
    % Display Iteration Information
    disp(['Iteration ' num2str(it) ': Best Cost = ' num2str(OptCost(it)) ' --> Time = ' num2str(Time(it)) ' seconds' '; Fittness Evaluations = ' num2str(Counter(it))]);
    if(abs(Instance.optima-BestSol.Cost) <= accuracy) 
        break;
    end
end
%% Results
figure;
semilogy(OptCost,'LineWidth',2);
xlabel('Iteration');
ylabel('Best Cost');
