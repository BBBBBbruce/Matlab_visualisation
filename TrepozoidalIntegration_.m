function OutArray = TrepozoidalIntegration_(DiscreteArray,Step)
    OutArray = zeros(size(DiscreteArray));
    for i=1:length(DiscreteArray)-1
        OutArray(i) = trapz(Step(1:i+1),DiscreteArray(1:i+1)); 
    end
end 
