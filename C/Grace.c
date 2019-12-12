#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>

#define SOURCE ((const char*[]){ \
	"Grace_kid.c", \
	"#include <unistd.h>", \
	"#include <fcntl.h>", \
	"#include <sys/stat.h>", \
	"", \
	"#define SOURCE ((const char*[]){", \
	"})", \
	"", \
	"#define WRITE(FD, STR, CODE) do {", \
	"	/* ascii 9 = tab, 34 = quote, 44 = comma, 10 = new line, 32 = space, 92 = back slash */", \
	"	char ascii[] = {9, 34, 44, 32, 92, 10};", \
	"	CODE == 1 ? write(FD, &ascii[0], 1) : 0;", \
	"	CODE == 1 ? write(FD, &ascii[1], 1) : 0;", \
	"	for (int i = 0; STR[i]; i++) write(FD, &STR[i], 1);", \
	"	if (CODE == 1) for (int j = 1; j < 5; j++) write(FD, &ascii[j], 1);", \
	"	if (CODE == 2) for (int j = 3; j < 5; j++) write(FD, &ascii[j], 1);", \
	"	write(FD, &ascii[5], 1);", \
	"	} while (0)", \
	"", \
	"#define MAIN() int main() {", \
	"	int fd = open(SOURCE[0], O_CREAT | O_WRONLY | O_TRUNC);", \
	"	chmod(SOURCE[0], 0777);", \
	"	for (int x = 1; x < 5; x++) WRITE(fd, SOURCE[x], 0);", \
	"	WRITE(fd, SOURCE[5], 2);", \
	"	for (int x = 0; x < 34; x++) WRITE(fd, SOURCE[x], 1);", \
	"	for (int x = 6; x < 8; x++) WRITE(fd, SOURCE[x], 0);", \
	"	for (int x = 8; x < 17; x++) WRITE(fd, SOURCE[x], 2);", \
	"	for (int x = 17; x < 19; x++) WRITE(fd, SOURCE[x], 0);", \
	"	for (int x = 19; x < 31; x++) WRITE(fd, SOURCE[x], 2);", \
	"	for (int x = 31; x < 34; x++) WRITE(fd, SOURCE[x], 0);", \
	"	return (0);", \
	"}", \
	"", \
	"MAIN();", \
})

#define WRITE(FD, STR, CODE) do { \
	/* ascii 9 = tab, 34 = quote, 44 = comma, 10 = new line, 32 = space, 92 = back slash */ \
	char ascii[] = {9, 34, 44, 32, 92, 10}; \
	CODE == 1 ? write(FD, &ascii[0], 1) : 0; \
	CODE == 1 ? write(FD, &ascii[1], 1) : 0; \
	for (int i = 0; STR[i]; i++) write(FD, &STR[i], 1); \
	if (CODE == 1) for (int j = 1; j < 5; j++) write(FD, &ascii[j], 1); \
	if (CODE == 2) for (int j = 3; j < 5; j++) write(FD, &ascii[j], 1); \
	write(FD, &ascii[5], 1); \
	} while (0)

#define MAIN() int main() { \
	int fd = open(SOURCE[0], O_CREAT | O_WRONLY | O_TRUNC); \
	chmod(SOURCE[0], 0777); \
	for (int x = 1; x < 5; x++) WRITE(fd, SOURCE[x], 0); \
	WRITE(fd, SOURCE[5], 2); \
	for (int x = 0; x < 34; x++) WRITE(fd, SOURCE[x], 1); \
	for (int x = 6; x < 8; x++) WRITE(fd, SOURCE[x], 0); \
	for (int x = 8; x < 17; x++) WRITE(fd, SOURCE[x], 2); \
	for (int x = 17; x < 19; x++) WRITE(fd, SOURCE[x], 0); \
	for (int x = 19; x < 31; x++) WRITE(fd, SOURCE[x], 2); \
	for (int x = 31; x < 34; x++) WRITE(fd, SOURCE[x], 0); \
	return (0); \
}

MAIN();
