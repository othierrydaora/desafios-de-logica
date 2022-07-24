#include <stdio.h>

int palindromo(char string[20])
{
  int limit = 0;
  for (int i = 0; string[i] != '\0'; i++)
    limit++;
  for (int j = 0; j < limit; j++) {
    if (string[j] != string[limit - j - 1])
      return 1;
  }
  return 0;
}

int main()
{
  char palavra[20];
  puts("Programa que verifica se uma string é um palíndromo");
  puts("Insira a palavra: ");
  scanf("%s", palavra);
  int result = palindromo(palavra);
  if (result)
  puts("Não é um palíndromo");
  else
  puts("É um palíndromo");
  return 0;
}
