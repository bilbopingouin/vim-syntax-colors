#include <stdio.h>

/**
 * Some pre-processor thingy
 */
#define SQ(x) (x*x)

#define FOO (3)

/** 
 * A struct.
 * TODO: Add an enum or a union as well
 * And maybe some "string" within the comment
 */
struct myStruct
{
  int a;
  int b;
};

int main (int argc, char* argv[])
{
  struct myStruct ms;

  ms.a = FOO;
  ms.b = SQ(FOO);

  printf(" = %d\n", ms.a+ms.b);

  return 0;
}
