#include <iostream>
#include <cstdlib>
#include "HyperExample.h"
#include "PetscExample.h"
 int  main(){
 HyperExample A{};
 A.run(); //returns an int value 
 PETScExample B{};
 B.run(); 
 if (A.run() != 0)
    exit(1);
if (B.run() != 0)
    exit(1);
return 0; //so success so theyy passed the tests
 } //ask main must return int error; first I tried to define it as bool then it gave me this error so i switched to int main