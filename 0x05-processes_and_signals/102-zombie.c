#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/**
 * infinite_while - infinite loop
 * Return: 0 on success
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - creates 5 zombie processes
 *
 * Return: 0 on success
 */
int main(void)
{
	int i, zombie;

	for (i = 0; i < 5; i++)
	{
		zombie = fork();
		if (zombie > 0)
			printf("Zombie process created, PID: %d\n", zombie);
		else
			exit(0);
	}
	infinite_while();
	return (0);
}
