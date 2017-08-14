X = zeros(2, 1);
Y = zeros(3, 1);
%Setting up organisms
ORGCOUNT = 100;
o(ORGCOUNT,1) = Organism(1);
for i = 1:ORGCOUNT
   o(i) = Organism();
   X(o(i).sex) = X(o(i).sex) + 1;
   Y(o(i,1).genes(1).expression) = Y(o(i,1).genes(1).expression) + 1;
end

H = pie(Y);%, {'aa', 'Aa', 'AA'}
T = H(strcmpi(get(H,'Type'),'text'));
P = cell2mat(get(T,'Position'));
set(T,{'Position'},num2cell(P*0.6,2))
L = {'aa', 'Aa', 'AA'};
text(P(:,1),P(:,2),L(:));

%figure(2);
%pie(X, {'Male', 'Female'});

nO(ORGCOUNT,1) = Organism(1);
for i = 1:100
   %Predation
   %Carrying capacity
   %Reproduction
   %%%Separate males and females into two arrays; check which one is longer
   for j = 1:ORGCOUNT/2
      nO(j*2-1) = Organism();
      nO(j*2-1).Inherit(o(j), o(j+15));
      nO(j*2) = Organism();
      nO(j*2).Inherit(o(j), o(j+15));
   end
   o = nO;
end

X = zeros(2, 1);
Y = zeros(3, 1);
for j = 1:ORGCOUNT
   X(o(j).sex) = X(o(j).sex) + 1;
   Y(o(j).genes(1).expression) = Y(o(j).genes(1).expression) + 1;
end

figure(3);
H = pie(Y);
T = H(strcmpi(get(H,'Type'),'text'));
P = cell2mat(get(T,'Position'));
set(T,{'Position'},num2cell(P*0.6,2))
L = {'aa', 'Aa', 'AA'};
text(P(:,1),P(:,2),L(:));

%figure(4);
%pie(X, {'Male', 'Female'});