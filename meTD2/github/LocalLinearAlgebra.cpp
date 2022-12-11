//ajoouter à cmake
#include "LocalLinearAlgebra.h"

 //LocalLinearAlgebra::mult(A_local, x_local, tmp_local);
    //il faut les definir dans locallinearalgebra
    //j'ai pas compris pq on prend tmp_local ici??

double& LocalLinearAlgebra::Matrix::add_value(int i, int j, int val){//changing the elements
        int n = width *i +j;
        matrix[n] = val;
        return matrix[n]; //A_local.matrix has changed here
        };
std::vector<double> LocalLinearAlgebra::Matrix::mult(std::vector<double>& matrix, std::vector<double>& x_local){
    int width = x_local.size();
        int height = matrix.size()/x_local.size();
        std::vector<double> tmp(width); 
        
        for (int i = 0; i < height; i++ )
        for (int j = 0; j < width; j++){
        tmp[i] += matrix[width*i+j] * x_local[i];
        };
        std::cout<<"mult"<<std::endl;
        for (int n : tmp){std::cout<<n<<" "<<std::endl;};
        return tmp; //we dont return reference here bc tmp is a variable created in the function therefore local
};
std::vector<double>& LocalLinearAlgebra::Matrix::copy(Alien::Vector& tmp_local,std::vector<double>& r_local ){
    Alien::LocalVectorReader Alien_Vectors(tmp_local); //construire la classe
        for(int i = 0; i< Alien_Vectors.size(); i++){

            r_local[i] = Alien_Vectors[i];
        };
        return r_local; //we can return a reference here 
};
std::vector<double>& LocalLinearAlgebra::Matrix::copy(std::vector<double> const& tmp_local,std::vector<double>& r_local ){
        r_local = tmp_local;
        std::cout<<"r local"<<std::endl;
        for (int n : r_local){std::cout<<n<<" "; };
        return r_local;
};

std::vector<double>& LocalLinearAlgebra::Matrix::axpy(double a, std::vector<double>& b_local, std::vector<double>& r_local){
        int n = b_local.size();
        for (int i = 0; i < n; i++){
        r_local[i] = r_local[i] + a* b_local[i]; 
            };
        std::cout<<"axpy"<<std::endl;
        for (int n : r_local){std::cout<<n<<" "; };
        return r_local;
    };
double LocalLinearAlgebra::Matrix::norm2(std::vector<double> r_local){
        int max = r_local.size();
        double sum = 0.;
        for (int i = 0; i < max; i++){
            sum += r_local[i] * r_local[i];
        };
        //std::cout<<"norm2"<< sum <<std::endl;
        return sqrt(sum);
};