o(25,1) = Organism(1);
X = zeros(2, 1);
Y = zeros(25,1);
for i = 1:25
   o(i) = Organism();
   X(o(i).sex) = X(o(i).sex) + 1;
   Y(i) = o(i,1).CalcSexualSelection();
end

pie(X, {'Male', 'Female'});