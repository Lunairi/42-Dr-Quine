colleen:
	- sh test_colleen.sh

grace:
	- sh test_grace.sh

sully:
	- sh test_sully.sh

all: colleen grace sully

clean:
	rm rb_colleen_test
	rm py_colleen_test
	rm Grace_kid.py
	rm Grace_kid.rb
	rm Sully_*

fclean: clean

re: fclean all

.PHONY: all clean fclean re