#include <unistd.h>

const char* source_code[] = {
	"#include <unistd.h>",
	"",
	"const char* source_code[] = {",
	"};",
	"void	printline(const char *str, char code_block) {",
	"	// Utility printer, code_block = stuff to be pritned inside source_code[]",
	"	// ascii 9 = tab, 34 = quote, 44 = comma, 10 = new line",
	"	char ascii[] = {9, 34, 44, 10};",
	"	code_block == 1 ? write(1, &ascii[0], 1) : 0 ;",
	"	code_block == 1 ? write(1, &ascii[1], 1) : 0 ;",
	"	while (*str)",
	"		write(1, str++, 1);",
	"	code_block == 1 ? write(1, &ascii[1], 1) : 0 ;",
	"	code_block == 1 ? write(1, &ascii[2], 1) : 0 ;",
	"	write(1, &ascii[3], 1);",
	"}",
	"",
	"int main() {",
	"	for (int i = 0; i < 3; i++) {",
	"		printline(source_code[i], 0);",
	"	}",
	"	for (int i = 0; i < 32; i++) {",
	"		printline(source_code[i], 1);",
	"	}",
	"	// Ending section for source_code[]",
	"	printline(source_code[3], 0);",
	"	printline(source_code[1], 0);",
	"	for (int i = 4; i < 32; i++) {",
	"		printline(source_code[i], 0);",
	"	}",
	"	return (0);",
	"}",
};

void	printline(const char *str, char code_block) {
	// Utility printer, code_block = stuff to be pritned inside source_code[]
	// ascii 9 = tab, 34 = quote, 44 = comma, 10 = new line
	char ascii[] = {9, 34, 44, 10};
	code_block == 1 ? write(1, &ascii[0], 1) : 0 ;
	code_block == 1 ? write(1, &ascii[1], 1) : 0 ;
	while (*str)
		write(1, str++, 1);
	code_block == 1 ? write(1, &ascii[1], 1) : 0 ;
	code_block == 1 ? write(1, &ascii[2], 1) : 0 ;
	write(1, &ascii[3], 1);
}

int main() {
	for (int i = 0; i < 3; i++) {
		printline(source_code[i], 0);
	}
	for (int i = 0; i < 32; i++) {
		printline(source_code[i], 1);
	}
	// Ending section for source_code[]
	printline(source_code[3], 0);
	printline(source_code[1], 0);
	for (int i = 4; i < 32; i++) {
		printline(source_code[i], 0);
	}
	return (0);
}
