# Self Printing Python
import os

def writesource(f, n):
	source = [
		'# Self Printing Python',
		'import os',
		'',
		'def writesource(f, n):',
		'	source = [',
		'	]',
		'	for x in range(0, 5):',
		'		f.write("{0}{1}".format(source[x], chr(10)))',
		'	for x in range(0, 20):',
		'		f.write("		{0}{1}{0},{2}".format(chr(39), source[x], chr(10)))',
		'	for x in range(5, 20):',
		'		f.write("{0}{1}".format(source[x], chr(10)))',
		'	f.write("	main({0}){1}".format(str(n-1), chr(10)))',
		'	f.close()',
		'',
		'def main(x):',
		'	writesource(open("Sully_{0}.py".format(str(x-1)), "w+"), x)',
		'	os.system("/usr/bin/env python3 Sully_{0}.py".format(str(x-1))) if x > 1 else 0',
		'',
		'if __name__ == "__main__":',
	]
	for x in range(0, 5):
		f.write("{0}{1}".format(source[x], chr(10)))
	for x in range(0, 20):
		f.write("		{0}{1}{0},{2}".format(chr(39), source[x], chr(10)))
	for x in range(5, 20):
		f.write("{0}{1}".format(source[x], chr(10)))
	f.write("	main({0}){1}".format(str(n-1), chr(10)))
	f.close()

def main(x):
	writesource(open("Sully_{0}.py".format(str(x-1)), "w+"), x)
	os.system("/usr/bin/env python3 Sully_{0}.py".format(str(x-1))) if x > 1 else 0

if __name__ == "__main__":
	main(5)
