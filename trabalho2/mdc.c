#include <stdio.h>
#include <stdlib.h>

//  Adicionei o mmc aqui tambem
//  Usando o mesmo loop 
//  Dá pra calcular os dois

main(){
    int n1,n2,resto;
      

    printf("Digite dois numeros: ");
    scanf("%d%d", &n1, &n2);
                            
    resto=n1%n2;
              
    while(resto!=0){
        n1    = n2;
        n2    = resto;
        resto = n1%n2;         
    }
    
    // mdc
    printf("MDC = %d\n", n2);

    // mmc
    return ( num1 * num2) / a;

    system("pause");
}