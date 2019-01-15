#include <ts.h>

int		ts_isdigit(void)
{
	char test = '5';
	int res1 = isdigit(test);
	int res2 = ft_isdigit(test);

	if (res1 == res2)
		return (0);
	else
		return (1);
}