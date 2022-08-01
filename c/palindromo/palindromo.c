#include <stdio.h>
#include <string.h>

int palindromo(char *string)
{
  const int comp = strlen(string);
  for (int j = 0; j < comp; j++) {
    if (string[j] != string[comp - j - 1])
      return 0;
  }
  return 1;
}

int main()
{
  char palavra[20];
  puts("Programa que verifica se uma palavra é um palíndromo");
  puts("Insira a palavra: ");
  scanf("%s", palavra);
  int result = palindromo(palavra);
  if (result)
    puts("É um palíndromo");
  else
    puts("Não é um palíndromo");
  return 0;
}
