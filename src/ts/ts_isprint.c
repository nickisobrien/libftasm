#include <ts.h>

int		ts_isprint(void)
{
	char test = 12;
	int res1 = isprint(test);
	int res2 = ft_isprint(test);

	if (res1 == res2)
		return (0);
	else
		return (1);
}