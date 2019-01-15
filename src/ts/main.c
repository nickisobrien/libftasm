#include <ts.h>

int		main(void)
{
	printf("Testing bzero: ");
	if (!ts_bzero())
		printf("passed\n");
	else
		printf("FAILED\n");

	printf("Testing tolower: ");
	if (!ts_tolower())
		printf("passed\n");
	else
		printf("FAILED\n");

	printf("Testing toupper: ");
	if (!ts_toupper())
		printf("passed\n");
	else
		printf("FAILED\n");

	printf("Testing strcat: ");
	if (!ts_strcat())
		printf("passed\n");
	else
		printf("FAILED\n");

	printf("Testing isalpha: ");
	if (!ts_isalpha())
		printf("passed\n");
	else
		printf("FAILED\n");

	printf("Testing isdigit:");
	if (!ts_isdigit())
		printf("passed\n");
	else
		printf("FAILED\n");

	printf("Testing isalnum: ");
	if (!ts_isalnum())
		printf("passed\n");
	else
		printf("FAILED\n");

	printf("Testing isascii: ");
	if (!ts_isascii())
		printf("passed\n");
	else
		printf("FAILED\n");

	printf("Testing isprint: ");
	if (!ts_isprint())
		printf("passed\n");
	else
		printf("FAILED\n");

	printf("Testing strlen: ");
	if (!ts_strlen())
		printf("passed\n");
	else
		printf("FAILED\n");

	printf("Testing memset: ");
	if (!ts_memset())
		printf("passed\n");
	else
		printf("FAILED\n");

	printf("Testing memcpy: ");
	if (!ts_memcpy())
		printf("passed\n");
	else
		printf("FAILED\n");

	return (0);
}