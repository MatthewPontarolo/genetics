classdef Gene
    %Gene: Represents a characteristic in its 3 expressions
    %   The three expressions are dominant AA, partial Aa, and recessive aa
    %   (often, partial is the same as dominant)
    
    properties
        name;
        expression;             %1 = aa, 2 = Aa, 3 = AA
        sexualSelection;        %How likely for the organism to mate with limited mates available
        predatorSurvival;       %Bonus to surviving the predation calculation
        foodBoost;              %Bonus to surviving limited food conditions (carrying capacity)
    end
    
    methods
        function obj = Gene(n, e, s, p, f)
            obj.expression = 1;
            obj.sexualSelection = [1 1 1];
            obj.predatorSurvival = [1 1 1];
            obj.foodBoost = [1 1 1];
            if nargin > 0
                obj.name = n;
                obj.expression = e;
                obj.sexualSelection = s;
                obj.predatorSurvival = p;
                obj.foodBoost = f;
            end
        end
        
        function e = GetExpression(this)
           e = this.expression; 
        end
        
        function s = GetSexualSelection(this)
           s = this.sexualSelection(this.expression); 
        end
        
    end
    
end

