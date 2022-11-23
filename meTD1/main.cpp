#include <iostream>
#include "MyClass.h"

int main (){
MyLib::MyClass A{};
A.print(); //prints the description of MyClass

/*using MyLib::MyClass2;*/
void MyLib::MyClass2::print() const {  //?
    std::cout<<"print method of MyClass2"<<std::endl;
    };

return 0;
}