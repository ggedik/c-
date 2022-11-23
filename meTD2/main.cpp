#include <iostream>
#include "HyperExample.h"
#include "PetscExample.h"
#include "MpiMock.h"
#include "LocalLinearAlgebra.h"


int main(int argc, char** argv){
    
    MPI_Init(&argc,&argv); //butun calcul numerique cvalismalari kullaniyor en azindan ogrenmek ne olduugnu mutlaka bilmek lazim dersini alacakmisiz
    
    HyperExample A{};
    A.run(); //c'est une sytanxe de static /NON STATIC?? 
    PETScExample B{};
    B.run(); //on pouvait l'appeler comme ca si la methode run etait static dans .h// boyle not etmisim ama hocanin anlattiginin tma tersi bu 4
    
    LocalLinearAlgebra algebra{}; //creation de l'objet qui est de la classe de 
    LocalLinearAlgebra::Vector tmp_local(size); //vector est un classe dans la classe LocalLin
                                                        //tmp_local est une methode de vector qui est compilé statiquement 
                                                                //donc je ne dois pas creer un obj pour y acceder

    MPI_Finalize();
    
    return 0;

};

