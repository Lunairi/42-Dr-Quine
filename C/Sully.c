#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <string.h>
#include <stdlib.h>

const char* source_code[] = {
	"Sully_0.c",
	"clang -Wall -Wextra -Werror -o Sully_0 Sully_0.c",
	"./Sully_0",
	"	int x = 0;",
	"#include <unistd.h>",
	"#include <fcntl.h>",
	"#include <sys/stat.h>",
	"#include <string.h>",
	"#include <stdlib.h>",
	"",
	"const char* source_code[] = {",
	"};",
	"",
	"char*	set_sully_value(int i, int line) {",
	"	char *ret = strdup(source_code[line]);",
	"	line == 0 ? ret[6] += i : 0;",
	"	if (line == 1) { ret[37] += i; ret[45] += i; }",
	"	line == 2 ? ret[8] += i : 0;",
	"	line == 3 ? ret[9] += i : 0;",
	"	return (ret);",
	"}",
	"",
	"void	writefile(const char *str, int fd, char code_block) {",
	"	// ascii 9 = tab, 34 = quote, 44 = comma, 10 = new line",
	"	char ascii[] = {9, 34, 44, 10};",
	"	code_block == 1 ? write(fd, &ascii[0], 1) : 0;",
	"	code_block == 1 ? write(fd, &ascii[1], 1) : 0;",
	"	while (*str)",
	"		write(fd, str++, 1);",
	"	code_block == 1 ? write(fd, &ascii[1], 1) : 0;",
	"	code_block == 1 ? write(fd, &ascii[2], 1) : 0;",
	"	write(fd, &ascii[3], 1);",
	"}",
	"",
	"int main() {",
	"",
	"	if (x) {",
	"		char *file = set_sully_value(x - 1, 0);",
	"		int fd = open(file, O_CREAT | O_WRONLY | O_TRUNC);",
	"		chmod(file, 0777);",
	"		for (int i = 4; i < 11; i++) { writefile(source_code[i], fd, 0); }",
	"		for (int i = 0; i < 48; i++) { writefile(source_code[i], fd, 1); }",
	"		for (int i = 11; i < 48; i++) i != 35 ? writefile(source_code[i], fd, 0) : writefile(set_sully_value(x - 1, 3), fd, 0);",
	"		system(set_sully_value(x - 1, 1));",
	"		system(set_sully_value(x - 1, 2));",
	"	}",
	"	return (0);",
	"}",
};

char*	set_sully_value(int i, int line) {
	char *ret = strdup(source_code[line]);
	line == 0 ? ret[6] += i : 0;
	if (line == 1) { ret[37] += i; ret[45] += i; }
	line == 2 ? ret[8] += i : 0;
	line == 3 ? ret[9] += i : 0;
	return (ret);
}

void	writefile(const char *str, int fd, char code_block) {
	// ascii 9 = tab, 34 = quote, 44 = comma, 10 = new line
	char ascii[] = {9, 34, 44, 10};
	code_block == 1 ? write(fd, &ascii[0], 1) : 0;
	code_block == 1 ? write(fd, &ascii[1], 1) : 0;
	while (*str)
		write(fd, str++, 1);
	code_block == 1 ? write(fd, &ascii[1], 1) : 0;
	code_block == 1 ? write(fd, &ascii[2], 1) : 0;
	write(fd, &ascii[3], 1);
}

int main() {
	int x = 5;
	if (x) {
		char *file = set_sully_value(x - 1, 0);
		int fd = open(file, O_CREAT | O_WRONLY | O_TRUNC);
		chmod(file, 0777);
		for (int i = 4; i < 11; i++) { writefile(source_code[i], fd, 0); }
		for (int i = 0; i < 48; i++) { writefile(source_code[i], fd, 1); }
		for (int i = 11; i < 48; i++) i != 35 ? writefile(source_code[i], fd, 0) : writefile(set_sully_value(x - 1, 3), fd, 0);
		system(set_sully_value(x - 1, 1));
		system(set_sully_value(x - 1, 2));
	}
	return (0);
}
