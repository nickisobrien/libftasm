#include <ts.h>

int		ts_isalnum(void)
{
	char test = '9';
	int res1 = isalnum(test);
	int res2 = ft_isalnum(test);

	if (res1 == res2)
		return (0);
	else
		return (1);
}