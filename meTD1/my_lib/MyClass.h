#ifndef _MY_CLASS_H
#define _MY_CLASS_H
namespace MyLib{
    class MyClass; //expect a class definition for this
    class MyClass2; //class i gercekten icerde defini etmek lazimmis hallederiz
}
class MyLib::MyClass{
public:
    void print() {
        std::cout << "description of this class"<<std::endl;
        }
};
class MyLib::MyClass2{
    public: 
    void print() const;
};
#endif