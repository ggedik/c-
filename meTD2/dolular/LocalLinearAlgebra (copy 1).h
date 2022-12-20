#include <iostream>
#include <vector>
#include <cmath>
#include "AlienMock.h"

class LocalLinearAlgebra{
    public:
    class Matrix {
        std::vector<double> matrix;                            //member of matrix
        public: 
        //constructor
        Matrix(size_t dim1, size_t dim2, double init){
        size_t n = dim1 * dim2;                      
        std::vector<double> matrix(n,init);  
        for (int n : matrix)
            std::cout << n << ", ";
            std::cout << "}; \n";                  //initalizing the member 
        //std::cout<< "this is matrix\n"<<matrix[0]<<std::endl; 
        };

        double& add_value(double m){   //why size_t doesnt wotk?      //passing reference in order to not to copy it everytime 
            matrix.push_back(m);
            std::cout << "v = { ";
            for (int n : matrix)
            std::cout << n << ", ";
            std::cout << "}; \n";
            //std::cout<<"this is new matrix[5]" << matrix[5]<<std::endl;
            return matrix[5];
        };  //write here the overloading() too*/

       void fillMatrix(int dim1, int dim2 , int offset);

    };
};
        //LocalLinearAlgebra::Matrix double& add_value(size_t i, size_t j, double m);
        /*LocalLinearAlgebra::Matrix  void fillMatrix(int dim1, int dim2 , int offset) {
            int offset {0}; //default is zero
                            //c'est un matrice carré donc dim1 et dim2 sont memes
                            //l-gsize? idk what is that 
            
            for (int irow = offset; irow < dim1; ++irow){
               A_local.add_value(irow,irow) = 2;
               if (irow -1 >= 0){
                A_local(irow,irow-1) = -1;
               };
               if (irow+1 < dim1){
                A_local(irow, irow+1) = -1;
               };
                
            };
        };
    };
};  */

