#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[])
{
  char nor[30] = argv[1];
  char inv[30];
  for (int i = 0; nor[i] != '\0'; i++)
    inv += nor[i];
  puts(inv);
  return 0;
}
