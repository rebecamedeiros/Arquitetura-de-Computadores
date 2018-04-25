/*Exemplo em C do programa a ser apresentado no projeto*/

#include <stdio.h>
#include <stdlib.h>

int main(){

    printf("\n Programa para imprimir numeros primos");
    int n;

    printf("\n Digite o valor: ");
    scanf("%d", &n);

    printf("\n Numeros primos entre 2 e %d: ", n);

    for (int i = 2; i <= n; i++){

        if(i % 2 != 0){
            printf("\n\t %d", i);
        }
    }

    return 0;
}
