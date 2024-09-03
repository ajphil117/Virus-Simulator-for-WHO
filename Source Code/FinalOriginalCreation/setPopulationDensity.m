
function CA = setPopulationDensity(CA, greyimage, startingInfectionProbability, Infection_Probability_Matrix, State_Probability_Matrix, Rows, Columns, probabilty, index)
    z = ones(Rows, Columns);

    z(State_Probability_Matrix <= probabilty & Infection_Probability_Matrix >= startingInfectionProbability) = 3;
    z(State_Probability_Matrix <= probabilty & Infection_Probability_Matrix < startingInfectionProbability) = 4;

    CA(greyimage == index) = z(greyimage == index);
end
