#include <ts.h>

int		ts_isalpha(void)
{
	char test = '9';
	int res1 = isalpha(test);
	int res2 = ft_isalpha(test);

	if (res1 == res2)
		return (0);
	else
		return (1);
}