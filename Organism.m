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
            obj.genes = Gene("Feathers", e, [1.2 1 .7], [1 1 1], [1 1 1]);
            obj.genes(1,1) = Gene("Feathers", e, [1.2 1 .7], [1 1 1], [1 1 1]);
        end
        
        function Inherit(this, p1, p2)
           
            %Randomly decide which alleles to take for each gene
        end
        
        function s = CalcSexualSelection(this)
            disp(this.genes);
            %CURRENT PROBLEM IS THAT 'genes' IS JUST A GENE, NOT AN ARRAY
            %OF GENES
            s = 1;
            for i = 1:this.genes.size()
                s = s * this.genes(i).GetSexualSelection();
            end
        end
        
    end
    
end

