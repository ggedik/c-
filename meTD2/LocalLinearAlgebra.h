#include <iostream>
#include <vector>
#include <cmath>
#include "AlienMock.h"
class LocalLinearAlgebra{
public: 

class Matrix{
public:
    std::vector<double> matrix; //creating member 
    int width;
    int height;
    Matrix(int dim1, int dim2, double init) : matrix(dim1*dim2, init), width{dim2} , height{dim1} {}; //initializing the member in the constructor
    
    double& add_value(int i, int j, int val);

    std::vector<double> mult(std::vector<double>& matrix, std::vector<double>& x_local);

    std::vector<double>& copy(Alien::Vector& tmp_local,std::vector<double>& r_local );
        //overloading copy vector: couldnt decide whether use template
        std::vector<double>& copy(std::vector<double> const& tmp_local,std::vector<double>& r_local );
        std::vector<double>& axpy(double a, std::vector<double>& b_local, std::vector<double>& r_local);
    double norm2(std::vector<double> r_local);
    };
};



