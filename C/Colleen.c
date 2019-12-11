#include <unistd.h>

const char source_code[] = {
	"#include <unistd.h>",
	"",
	"const char source_code[] = {",
	"};",
	"void	print_shit(char *str) {",
	"	// Two liner for printing stuff",
	"	while (*str)",
	"	write(1, str++, 1);",
	"}",
	"",
	"int main() {",
	"	print_shit(\"test\");",
	"	return (0);",
	"}"
};


void	print_shit(char *str) {
	// Two liner for printing stuff
	while (*str)
		write(1, str++, 1);
}

int main() {
	for (int i = 0; i < 9; i++) {
		print_shit(source_code[i]);
	}
	return (0);
}
