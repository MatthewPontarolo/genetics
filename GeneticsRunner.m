o(1,25) = Organism(1);
X = zeros(1,2);
for i = 1:25
   o(1,i) = Organism();
   X(o(1,i).sex) = X(o(1,i).sex) + 1;
end

pie(X, {'Male', 'Female'});