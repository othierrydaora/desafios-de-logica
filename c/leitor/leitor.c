#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main()
{
  char linha[50];
  FILE *lista = fopen("lista.csv", "r");
  FILE *output = fopen("output.json", "w");
  fprintf(stdout, "{\n");
  while (fscanf(lista, "%49[^\n]\n", linha) == 1) {
    fprintf(stdout, "%s\n", linha);
  }
  fprintf(stdout, "}");
  fclose(lista);
  fclose(output);
  return 0;
}
