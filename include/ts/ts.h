#ifndef __LIBFTS_H
#define __LIBFTS_H

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <ctype.h>

int		ts_bzero(void);
int		ts_tolower(void);
int		ts_toupper(void);
int		ts_strcat(void);
int		ts_isalpha(void);
int		ts_isdigit(void);
int		ts_isalnum(void);
int		ts_isascii(void);
int		ts_isprint(void);
int		ts_strlen(void);
int		ts_memset(void);
int		ts_memcpy(void);
int		ts_strdup(void);
int		ts_puts(void);

void	ft_bzero(void *s, size_t n);
int		ft_tolower(char c);
int		ft_toupper(char c);
char	*ft_strcat(char *restrict s1, const char *restrict s2);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
size_t	ft_strlen(const char *s);
void	*ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *restrict dst, const void *restrict src, size_t n);
char	*ft_strdup(const char *s1);
int		ft_puts(const char *s);

#endif