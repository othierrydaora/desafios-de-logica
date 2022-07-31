#include <stdio.h>

int increase(int *valor)
{
  *valor += 1;
  return 0;
}

int main()
{
  int x = 1;
  printf("Valor: %i\nPonteiro: %p\n", x, &x);
  increase(&x);
  printf("Valor: %i\nPonteiro: %p\n", x, &x);
  return 0;
}
