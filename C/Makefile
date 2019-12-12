NAME	= Colleen Grace 
CFLAGS	= -Wall -Wextra -Werror

all: $(NAME)

$(NAME): %: %.c
	clang $(CFLAGS) -o $@ $<

clean:
	rm -rf Grace_kid.c
	rm -rf tmp_colleen.c
	rm -f $(NAME)

fclean: clean
	rm -f $(NAME)

re: fclean all

test: all
	@echo "\x1b[32;1m[ Testing Colleen ]\x1b[0m"
	@echo "\x1b[35;1m[ Should display only command to run test sh ]\x1b[0m"
	sh test_colleen.sh
	@echo "\x1b[32;1m[ Testing Grace ]\x1b[0m"
	@echo "\x1b[35;1m[ Should display only command to run test sh ]\x1b[0m"
	sh test_grace.sh

.PHONY: all clean fclean re