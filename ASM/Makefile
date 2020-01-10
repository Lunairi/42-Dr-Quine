all: 
	@echo "\x1b[32;1m[ Testing Colleen ]\x1b[0m"
	@echo "\x1b[35;1m[ Should display only command to run test sh ]\x1b[0m"
	- sh test_colleen.sh
	@echo "\x1b[32;1m[ Testing Grace ]\x1b[0m"
	@echo "\x1b[35;1m[ Should display only command to run test sh ]\x1b[0m"
	- sh test_grace.sh

clean:
	- rm *.o
	- rm Grace_kid.s
	- rm colleen_output

fclean: clean
	- rm -f Colleen
	- rm -f Grace

re: fclean all

test: fclean all
	@echo "\x1b[32;1m[ Testing Colleen ]\x1b[0m"
	@echo "\x1b[35;1m[ Should display only command to run test sh ]\x1b[0m"
	- sh test_colleen.sh
	@echo "\x1b[32;1m[ Testing Grace ]\x1b[0m"
	@echo "\x1b[35;1m[ Should display only command to run test sh ]\x1b[0m"
	- sh test_grace.sh
	@echo "\x1b[32;1m[ Testing Sully ]\x1b[0m"
	@echo "\x1b[35;1m[ Should display only command to run test sh ]\x1b[0m"
	- sh test_sully.sh

.PHONY: all clean fclean re