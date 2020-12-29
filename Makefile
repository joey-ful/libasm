SRCS = ft_strlen.s\
	ft_strcpy.s\
	ft_strcmp.s\
	ft_write.s\
	ft_read.s\
	ft_strdup.s
OBJS = $(SRCS:.s=.o)
CC = gcc
CFLAGS = -Wall -Wextra -Werror
NACC = nasm
NAFLAGS = -f macho64
NAME = libasm.a
TEST = test
TEST1 = test1
TEXT = example.txt

%.o: %.s
	$(NACC) $(NAFLAGS) $<

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME) $(TEST) $(TEST1) $(TEXT)

re: fclean all

test: re
	$(CC) $(CFLAGS) -L. -lasm -o $(TEST) main.c
	./$(TEST)

test1: re
	$(CC) $(CFLAGS) -L. -lasm -o $(TEST1) main1.c
	rm -rf $(TEXT)
	./$(TEST1)

.PHONY: re all clean fclean test
