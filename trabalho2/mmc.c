int mmc(int num1, int num2) {

    int resto, a, b;

    a = num1;
    b = num2;

    resto = n1 % n2;

    while (resto != 0) {
        
        n1 = n2;
        n2 = resto;
        resto = n1 % n2;

    } 

    return ( num1 * num2) / a;
}