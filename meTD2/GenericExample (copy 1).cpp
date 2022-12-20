#include <iostream>

class GenericExample{
    public: 
    /*enum class Name {Hypre, PETSc};
    Name obj = Name::Hypre ; ??? ama neden yani */
    template <typename T>
    virtual void run(T){};
    virtual ~GenericExample(){};

};
class UniqueAPI{
    public:
    virtual void func(){};
    virtual ~UniqueAPI(){};
}

class HypreAPI : public UniqueAPI{
    public:
    void func() override {};
}

class PETScAPI : public UniqueAPI{
    public:
    void func() override {};
}

class SolverFabric{
    static void create(){
        
        std::unique_ptr<UniqueAPI> ptr = std::make_unique<UniqueAPI>();
        //return NULL;
    }

}