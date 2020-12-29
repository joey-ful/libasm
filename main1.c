#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>

int	ft_strlen(char const *str);

ssize_t	ft_write(int fd, void const *buf, size_t nbyte);

ssize_t	ft_read(int fd, void *buf, size_t nbyte);

int	main(void)
{
	int	fd;
	int	ret1;
	int	ret2;
	char	buff[1024];

	fd = open("./example.txt", O_CREAT | O_TRUNC | O_RDWR, 777);
	printf("[testing ft_write] write down at 'example.txt'\n");
	scanf("%[^\n]", buff);
	ret1 = ft_write(fd, buff, ft_strlen(buff));
	close(fd);
	printf("ret = %d\n", ret1);
	
	printf("----------------\n");
	fd = open("./example.txt", O_RDONLY);
	printf("[testing ft_read] read from 'example.txt'\n");
	ret2 = ft_read(fd, buff, ft_strlen(buff));
	buff[ret2] = '\0';
	printf("%s\n", buff);
	printf("ret = %d\n", ret2);
	close(fd);

	return (0);
}
