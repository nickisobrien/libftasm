#include <ts.h>

int		ts_memcpy(void)
{
	int test = 40;
	void *str = malloc(50);
	while (test < 90)
	{
		((char*)str)[test-40] = test;
		test++;
	}
	
	void *res1 = malloc(50);
	void *res2 = malloc(50);
	memcpy(res1, str, 50);
	ft_memcpy(res2, str, 50);

	if (!memcmp(res1, res2, 50))
		return (0);
	else
		return (1);
}