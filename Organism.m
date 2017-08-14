classdef Organism < handle
    %Organism: Represents an individual creature
    %   Holds info for sex and genetic traits of a single creature to be
    %   passed on
    
    properties
        sex;
        genes = Gene("", 1, [], [], []);
        mated = 0;
        id;
    end
    
    methods
        
        function obj = Organism(s)
            obj.id = rand;
            
            obj.sex = 1;
            if rand < .5
                obj.sex = 2;
            end
            if nargin > 0
                obj.sex = s;
            end
            
            %Temporary setup of genes
            e = rand;
            if e < .33
                e = 1;
            elseif e < .66
                e = 2;
            else
                e = 3;
            end
            obj.genes(1) = Gene("Feathers", e, [1.2 1 .7], [1 1 1], [1 1 1]);
            obj.genes(2) = Gene("Beak", e, [.8 1 1], [1 1 1], [1.3 1 1]);
        end
        
        function Inherit(this, p1, p2)
            %Randomly decide which alleles to take for each gene
            rng;
            for i = 1:length(p1.genes)
                sum = p1.genes(i).expression + p2.genes(i).expression;
                if sum == 2
                   this.genes(i).expression = 1;
                elseif sum == 3
                    if rand < .5
                        this.genes(i).expression = 1;
                    else
                        this.genes(i).expression = 2;
                    end
                elseif sum == 4
                    r = rand;
                    if r < .5
                        this.genes(i).expression = 2;
                    elseif r < .75
                        this.genes(i).expression = 1;
                    else
                        this.genes(i).expression = 3;
                    end
                elseif sum == 5
                    if rand < .5
                        this.genes(i).expression = 3;
                    else
                        this.genes(i).expression = 2;
                    end
                elseif sum == 6
                   this.genes(i).expression = 3;
                end
            end
        end
        
        function s = CalcSexualSelection(this)
            disp(this.genes);
            %CURRENT PROBLEM IS THAT 'genes' IS JUST A GENE, NOT AN ARRAY
            %OF GENES
            s = 1;
            for i = 1:length(this.genes)
                s = s * this.genes(i).GetSexualSelection();
            end
        end
        
    end
    
end

