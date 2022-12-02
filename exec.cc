#include <sys/types.h>
#include <unistd.h>
#include <iostream>
#include <stdio.h>
#include <string>

using namespace std;

int main()
{
	string program;
	program = "./another";

	cout << "Hello , I'm exec program!" << endl;

	getchar();

	execv(program.c_str(), NULL);

	return 0;
}
