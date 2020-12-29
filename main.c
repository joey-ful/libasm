#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>

# define STRLEN(x)		printf("- str = `%s`\n ft_strlen = %d, strlen = %d\n", x, ft_strlen(x), (int)strlen(x));
# define STRCMP(a, b)		printf("- str1 = `%s`, str2 = `%s`\n ft_strcmp = %d, strcmp = %d\n", a, b, ft_strcmp(a, b), strcmp(a, b));
# define STRCPY(s)		printf("- str = `%s`\n ft_strcpy = `%s`, strcpy = `%s`\n", s, ft_strcpy(buffer, s), strcpy(buffer, s));
# define DUP(s)			tmp = ft_strdup(s); tmp2 = strdup(s); printf("- str = `%s`\n ft_strdup = `%s`, strdup = `%s`\n", s, tmp, tmp2); free(tmp); free(tmp2); tmp = NULL; tmp2 = NULL;
# define SPLITLINE		printf("\n----------------------------------\n");

int	ft_strlen(char const *str);

int	ft_strcmp(char const *s1, char const *s2);

char	*ft_strcpy(char *dst, char const *src);

char	*ft_strdup(char const *s1);

int	main(void)
{
	int	i;
	long	r;
	char	buffer[500];
	char	*tmp;
	char	*tmp2;

	r = 0;
	i = 0;
	while (i < 100)
		buffer[i++] = 0;

	SPLITLINE
	printf("ft_strlen");
	SPLITLINE
	STRLEN("")
	STRLEN("0123456789abcdef")
	STRLEN("hi")

	SPLITLINE
	printf("ft_strcmp");
	SPLITLINE
	STRCMP("", "")
	STRCMP("libasm", "libasm")
	STRCMP("", "libasm")
	STRCMP("libasm", "")
	STRCMP("assembly", "lib")

	SPLITLINE
	printf("ft_strcpy");
	SPLITLINE
	STRCPY("")
	STRCPY("assembly language")

	SPLITLINE
	printf("ft_strdup");
	SPLITLINE
	DUP("")
	DUP("assembly language")

	return (0);
}
