#include <ts.h>

int		ts_memset(void)
{
	int test = 0x10;
	void *res1 = malloc(50);
	memset(res1, test, 50);
	void *res2 = malloc(50);
	ft_memset(res2, test, 50);

	if (!memcmp(res1, res2, 50))
		return (0);
	else
		return (1);
}