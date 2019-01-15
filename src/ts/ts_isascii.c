#include <ts.h>

int		ts_isascii(void)
{
	char test = 0;
	int res1 = isascii(test);
	int res2 = ft_isascii(test);

	if (res1 == res2)
		return (0);
	else
		return (1);
}