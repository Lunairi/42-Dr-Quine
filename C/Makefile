NAME	= Colleen
CFLAGS	= -Wall -Wextra -Werror

all: $(NAME)

$(NAME): %: %.c
	gcc $(CFLAGS) -o $@ $<

clean:
	rm -f $(NAME)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re