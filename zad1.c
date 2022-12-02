#include <sys/wait.h>
#include <sys/types.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int global;

int main()
{
	pid_t pid;
	int val;
	int* values;

	values = (int*)malloc(sizeof(int));

	pid = fork();
	printf("PID: %i PPID: %i\n", getpid(), getppid());


        if (pid < 0)
        {
                fprintf(stderr, "Fork failed");
                return 1;
        }
	else if (pid == 0)
                scanf("%d", &val);
        else
	{
                wait(NULL);
                printf("Child Complete");
		getchar();
        }


	return 0;
}
