#include <signal.h>
#include <sys/types.h>
#include <unistd.h>
#include <iostream>
#include <stdio.h>

using namespace std;

int main()
{
        int  pid, child, val, val2, val3;
        pid = getpid();
        cout << "PID: " << pid << endl;
        getchar();

        if (fork() == 0)
        {
                val = getpid();
                cout << "Child: " << val << endl;

                if (fork() == 0)
                {
                        val2 = getpid();
                        cout << "Grandchild: " << val2 << endl;
                }

        }

	else
	{
                cout << "Parent: " << getpid() << endl;

		if (fork() == 0)
		{
			val3 = getpid();
			cout << "Brother: " << val3 << endl;
			kill (val3, SIGKILL);
		}
        }

	kill(val, SIGKILL);
        kill(val2, SIGKILL);
        getchar();

        system("ps xao pid,ppid");
        cout << endl;
        system("pstree");
        cout << endl;

        return 0;
}
