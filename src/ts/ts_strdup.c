#include <ts.h>

int		ts_strdup(void)
{
	char *test = "string";
	char *res1 = strdup(test); (void)res1;
	// rax never gets reset so ft_strdup can just grab that from strdups
	char *res = strdup("fix"); (void)res;
	char *ft = ft_strdup(test); (void)ft;

	if (!memcmp(res1, ft, strlen(test)))
		return (0);
	else
		return (1);
}