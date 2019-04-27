#include <stdio.h> 
#define  bool int 
  
/* Function to get parity of number n. It returns 1 
   if n has odd parity, and returns 0 if n has even 
   parity */
bool getParity(unsigned int n) 
{ 
    bool parity = 0; 
    unsigned int result;
    while (n) 
    { 
        parity = !parity; 
        n      = n & (n - 1);
        
        // printf() ;
        printf("Operacao logica: %d \n", n);
    }         
    printf("Bit de paridade: %d \n", parity);
    printf("Operacao logica: %d \n", n);
    return parity; 
} 

  
/* Driver program to test getParity() */
int main() 
{ 
    unsigned int n ; 
    
    scanf("%u", &n);
    printf("Parity of no %d = %s",  n,  
             (getParity(n)? "odd": "even")); 
    printf("\n");
    
    return 0; 
} 