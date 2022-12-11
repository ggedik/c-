#include <iostream>
#include <cstdlib>
#include "HyperExample.cpp"
#include "PETScExample.cpp"
#include "LocalLinearAlgebra.cpp"
//#include "GenericExample.cpp"
    int  main(){
 //using Vector = std::vector<double>; couldn't use it because it confuses as Alien::Vector
    /*GenericExample generic_example{}; //construction de la classe type GenericExample
    generic_example.run(5); //hmm it's ok even if i dont put int?*/

   // auto unique_api = SolverFabric ::create(solver_type);
    int size = 4;
    LocalLinearAlgebra::Matrix A_local(size,size,0);

//building the matrix
    int offset{0}, lsize{size}, gsize{size};
    for (int irow = offset; irow < offset + lsize; ++irow) {
    A_local.add_value(irow, irow,2.);
        if (irow - 1 >= 0) {
        A_local.add_value(irow, irow - 1,-1.);
        }
        if (irow + 1 <= gsize) { //equal is missing in the td
        A_local.add_value(irow, irow + 1,-1.);
        }
    };

    for (int n : A_local.matrix ){
        std::cout<<n<<" "<<std::endl;
        }; //hox can we formattedly print that?

    std::vector<double> x_local(size,1);
    std::vector<double> b_local = A_local.mult(A_local.matrix, x_local);
    std::vector<double> tmp_local = A_local.mult(A_local.matrix, x_local);
    std::vector<double> r_local(size);
    A_local.copy(tmp_local, r_local);
    A_local.axpy(-1,b_local,r_local);

    std::cout << "NORM=" << A_local.norm2(r_local)<<std::endl;
    /*HyperExample A{};
 A.run(); //returns an int value 
 PETScExample B{};
 B.run(); 
 if (A.run() != 0)
    exit(1);
 if (B.run() != 0)
    exit(1);*/
/* //Ici on initialise avec les valeurs d'Alien,
   //mais comme Alien n'est pas installé 

   Alien ::Vector x_local_alien(size, nullptr);
   std::vector<double> x_local(size,1);
   A_local.copy(x_local_alien, x_local);

   
   Alien ::Vector b_local_alien(size,nullptr);
   A_local.copy(b_local_alien, b_local);   
*/
//std::cout << A_local.add_value(6.)<<std::endl;
return 0; //so success so theyy passed the tests
 }; //ask main must return int error; first I tried to define it as bool then it gave me this error so i switched to int main