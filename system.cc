#include <sys/types.h>
#include <unistd.h>
#include <iostream>
#include <stdio.h>

using namespace std;

int main()
{
cout << "Hello, I'm system program!" << endl;

system("ls -al /var/log/");
return 0;
}
