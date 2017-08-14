X = zeros(2, 1);
Y = zeros(3,1);
%Setting up organisms
o(30,1) = Organism(1);
for i = 1:30
   o(i) = Organism();
   X(o(i).sex) = X(o(i).sex) + 1;
   Y(o(i,1).genes(1).GetExpression()) = Y(o(i,1).genes(1).GetExpression()) + 1;
end

pie(Y, {'aa', 'Aa', 'AA'});
figure(2);
pie(X, {'Male', 'Female'});

nO(30,1) = Organism(1);
for i = 1:10
   %Predation
   %Carrying capacity
   %Reproduction
   %%%Separate males and females into two arrays; check which one is longer
   for j = 1:15
      nO(j*2-1) = Organism();
      nO(j*2) = Organism();
   end
end
o = nO;

for i = 1:30
   X(o(i).sex) = X(o(i).sex) + 1;
   Y(o(i,1).genes(1).GetExpression()) = Y(o(i,1).genes(1).GetExpression()) + 1;
end

figure(3);
pie(Y, {'aa', 'Aa', 'AA'});
figure(4);
pie(X, {'Male', 'Female'});