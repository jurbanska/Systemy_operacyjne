#include <signal.h>
#include <sys/types.h>
#include <unistd.h>
#include <iostream>
#include <stdio.h>

using namespace std;

int main()
{
        int  pid, child, val;
        pid = getpid();
        cout << "PID: " << pid << endl;
	getchar();

	if (fork() == 0)
	{
		val = getpid();
		cout << "Child: " << val << endl;
	}
	else
	{
		cout << "Parent: " << getpid() << endl;
	}

	kill(val, SIGKILL);
	getchar();

	system("ps xao pid,ppid");
	cout << endl;
	system("pstree");
	cout << endl;

	return 0;
}
