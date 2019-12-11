#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>

#define SOURCE ((const char*[]){ \
	"#include <unistd.h>", \
	"#include <fcntl.h>", \
	"#include <sys/stat.h>", \
	"END" \
})

#define WRITE(FD, STR) for (int i = 0; STR[i]; i++) write(FD, &(STR[i]), 1);

#define MAIN() int main() { \
	int fd = open("Grace_kid.c", O_CREAT | O_WRONLY); \
	chmod("Grace_kid.c", 0777); \
	for (int x = 0; x < 4; x++) WRITE(fd, SOURCE[x]); \
	return (0); \
}

MAIN();