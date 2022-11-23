//noublie pas de ajouter dans cmake
//Vous pourrez ajouter ces lignes de code à la fin des méthodes run() de vos deux classes HypreExample et PETScExample.
//j'ai pas compris haut
#include <iostream>
#include <vector>
#include <cmath>
#include "AlienMock.h"

using std::vector;

class LocalLinearAlgebra{
    public:
    class Matrix {
        //what i want to do: 
        //create two dimentional dynamically allocated matrix
        //so rows and columns are vectors 
        //get the sizes
        int nRow, nCol;
        static std::vector<double> tmp;//columns
        static std::vector<std::vector<double>> A_local;
        tmp.resize(nCol);
        A_local.resize(nRow);
        A_local.pushback(tmp);

        double& operator() (int row_index, int column_index){
            //va appeler fill matrix= which will fill a_local and will take the A_local as return
            return A_local[row_index][column_index];
        };

        void fillMatrix(int dim1, int dim2 , int offset) {
            int offset {0}; //default is zero
                            //c'est un matrice carré donc dim1 et dim2 sont memes
                            //l-gsize? idk what is that 
        
            for (int irow = offset; irow < dim1; ++irow){
               A_local(irow,irow) = 2;
               if (irow -1 >= 0){
                A_local(irow,irow-1) = -1;
               };
               if (irow+1 < dim1){
                A_local(irow, irow+1) = -1;
               };
                
            };
        };                                                  //??? it's not an instance of this class it's a method of this class ????
                                                            //apparemment on ne crée pas une classe qui sappelle Vector 
                                                            //alors pq dire au debut??
        std::vector<double> mult(std::vector<std::vector<double>> A_local, std::vector<double> x_local){
        int size = x_local.size();
        std::vector<double> tmp_local ;
        for (int i = 0; i<size; i++){
            tmp_local[i] = A_local[:][i]*x_local[i];
            };

        return tmp_local;
        };

        std::vector<double> axpy(double a, std::vector<double> b_local, std::vector<double> r_local){
            std::vector<double> result;
            int size = b_local.size();
            result.resize(size);
            for (int i = 0; i< size; i++){
                result[i] = a * b_local[i] + r_local[i]; 
            };
            return result; //hmm problem here 
        };


        std::vector<double> x_local, b_local, r_local;
        r_local.resize(nRow);
        r_local = mult(A_local, x_local);
        Alien::Vector x,b;
        Alien::LocalVectorReader A;
        for (int i = 0; i< A(x).size(); i++){
            x_local[i] = A(x)[i]; 
            b_local[i] = A(b).[i]; 
        }
        double norm2(std::vector <double> r_local){
            double norm2 = 0;
            double sum = 0;
            int size = r_local.size();
            
            for (int i = 0; i<size ; i++){
                sum = sum + r_local[i] * r_local[i];
            }

            norm2 = sqrt(sum);

            return norm2;
        };

        } ;

    } ;
   

/*pour trouver la norme de resinu nulle
*std::fill(vec.begin(), vec.end(), 1); DONT FORGET 
*b_local = A_local * x_local >>> appel à mult ?
*/
