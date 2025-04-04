
#include "sys.h"

__attribute__((section(".text.main")))
int main()
{
	char command[255];

	for (;;) {
		sys_write(1, "# ", 2);

		int count = sys_read(0, command, 255);
		command[count - 1] = 0;                         // /bin/ls\n -> /bin/ls\0

		pid_t fork_result = sys_fork();

		if (fork_result == 0) {
            sys_execve(command, NULL, NULL);
			break;
		} else {
			siginfo_t info;
			sys_waitid(P_ALL, 0, &info, WEXITED, 0);    // wait for all child processes
		}
	}

	sys_exit(0);
}
