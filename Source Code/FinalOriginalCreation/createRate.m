function M = createRate(Rows, Columns, Action_Matrix, greyimage, index)
    N = zeros(Rows, Columns);
    
    N(greyimage == 240) = Action_Matrix(1, index);
    N(greyimage == 225) = Action_Matrix(2, index);
    N(greyimage == 210) = Action_Matrix(3, index);
    N(greyimage == 195) = Action_Matrix(4, index);
    N(greyimage == 180) = Action_Matrix(5, index);
    N(greyimage == 165) = Action_Matrix(6, index);
    N(greyimage == 150) = Action_Matrix(7, index);
    N(greyimage == 135) = Action_Matrix(8, index);
    N(greyimage == 120) = Action_Matrix(9, index);
    N(greyimage == 105) = Action_Matrix(10, index);
    N(greyimage == 90) = Action_Matrix(11, index);
    N(greyimage == 75) = Action_Matrix(12, index);
    N(greyimage == 60) = Action_Matrix(13, index);
    N(greyimage == 45) = Action_Matrix(14, index);
    N(greyimage == 30) = Action_Matrix(15, index);
    N(greyimage == 15) = Action_Matrix(16, index);
    
    M = N;
end
