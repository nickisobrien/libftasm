#include <ts.h>

int		ts_strlen(void)
{
	char *test = "string";
	size_t res1 = strlen(test);
	size_t res2 = ft_strlen(test);

	if (res1 == res2)
		return (0);
	else
		return (1);
}