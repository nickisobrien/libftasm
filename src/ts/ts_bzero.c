#include <ts.h>

int		ts_bzero(void)
{
	int size = 500;
	char *a_test = (char *)malloc(size);
	char *b_test = (char *)malloc(size);
	bzero((void *)a_test, size);
	ft_bzero((void *)b_test, size);

	if (memcmp(a_test, b_test, (size_t)size))
		return (1);
	else
		return (0);
}