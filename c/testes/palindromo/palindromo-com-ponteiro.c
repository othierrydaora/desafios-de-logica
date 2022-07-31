#include <stdio.h>

int palindromo(char palavra[20], int *palindro)
{
  int counter = 0;
  for (int i = 0; palavra[i] != '\0'; i++)
    counter++;
  for (int j = 0; j < counter; j++) {
    if (palavra[j] != palavra[counter - j - 1])
      *palindro = 1;
  }
  return 0;
}

int main()
{
  int palin = 0;
  char palav[20];
  printf("Insira uma palavra: ");
  scanf("%s", palav);
  palindromo(palav, &palin);
  if (palin) {
    printf("Não é um palíndromo");
  } else {
    printf("É um palíndromo");
  }
  return 0;
}
