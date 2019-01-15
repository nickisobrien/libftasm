#include <ts.h>

int		ts_strcat(void)
{
	int size = 500;
	char *a1_test = (char *)malloc(size);
	char *b1_test = (char *)malloc(size/2);
	for (int i = 0; i < size / 2; i++)
	{
		a1_test[i] = 'a';
		b1_test[i] = 'b';
	}
	a1_test[size/2-1] = '\0';
	b1_test[size/2-1] = '\0';

	char *a2_test = (char *)malloc(size);
	char *b2_test = (char *)malloc(size/2);
	for (int i = 0; i < size / 2; i++)
	{
		a2_test[i] = 'a';
		b2_test[i] = 'b';
	}
	a2_test[size/2-1] = '\0';
	b2_test[size/2-1] = '\0';

	strcat(a1_test, b1_test);
	ft_strcat(a2_test, b2_test);

	if (strcmp(a1_test, a2_test))
		return (1);
	else
		return (0);
}