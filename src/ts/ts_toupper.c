#include <ts.h>

int		ts_toupper(void)
{
	char a = 'a';
	char resb = toupper(a);
	char resa = ft_toupper(a);
	if (resa == resb)
		return (0);
	else
		return (1);
}