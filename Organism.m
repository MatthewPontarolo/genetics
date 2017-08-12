classdef Organism
    %Organism: Represents an individual creature
    %   Holds info for sex and genetic traits of a single creature to be
    %   passed on
    
    properties
        sex;
        genes;
    end
    
    methods
        
        function obj = Organism(s)
            obj.sex = 1;
            if (rand < .5)
                obj.sex = 2;
            end
            if nargin > 0
                obj.sex = s;
            end
        end
        
        function Inherit(p1, p2)
           
            %Randomly decide which alleles to take for each gene
        end
        
    end
    
end

