#include <ts.h>

int		ts_tolower(void)
{
	char a = 'A';
	char resb = tolower(a);
	char resa = ft_tolower(a);
	if (resa == resb)
		return (0);
	else
		return (1);
}