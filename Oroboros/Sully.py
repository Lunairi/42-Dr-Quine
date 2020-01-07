# Oroboros Python -> Ruby
import os

def writesource(f, n):
	source = [
		'# Oroboros Python -> Ruby',
		'import os',
		'',
		'def writesource(f, n):',
		'	source = [',
		'	]',
		'	for x in range(20, 23):',
		'		f.write("{0}{1}".format(source[x], chr(10)))',
		'	for x in range(0, 39):',
		'		f.write("	{0}{1}{0},{2}".format(chr(39), source[x], chr(10)))',
		'	for x in range(23, 39):',
		'		f.write("{0}{1}".format(source[x], chr(10)))',
		'	f.write("MAIN.call({0}){1}".format(str(n-1), chr(10)))',
		'	f.close()',
		'',
		'def main(x):',
		'	writesource(open("Sully_{0}.rb".format(str(x-1)), "w+"), x)',
		'	os.system("ruby Sully_{0}.rb".format(str(x-1))) if x > 1 else 0',
		'',
		'if __name__ == "__main__":',
		'# Oroboros Ruby -> Python',
		'',
		'SOURCE = [',
		']',
		'',
		'WRITESOURCE = -> (x, y, z, a) {',
		'	SOURCE[y..z].each { |b| a == 0 ? (x.puts b) : (x.puts "		#{39.chr}#{b}#{39.chr},") }',
		'}',
		'',
		'MAIN = -> (x) {',
		'	file = File.open("Sully_#{x - 1}.py", "w")',
		'	WRITESOURCE.call(file, 0, 4, 0)',
		'	WRITESOURCE.call(file, 0, 38, 1)',
		'	WRITESOURCE.call(file, 5, 19, 0)',
		'	file.puts "	main(#{x-1})"',
		'	file.close',
		'	x > 1 ? exec("/usr/bin/env python3 Sully_#{x - 1}.py") : 0;',
		'}',
		'',
	]
	for x in range(20, 23):
		f.write("{0}{1}".format(source[x], chr(10)))
	for x in range(0, 39):
		f.write("	{0}{1}{0},{2}".format(chr(39), source[x], chr(10)))
	for x in range(23, 39):
		f.write("{0}{1}".format(source[x], chr(10)))
	f.write("MAIN.call({0}){1}".format(str(n-1), chr(10)))
	f.close()

def main(x):
	writesource(open("Sully_{0}.rb".format(str(x-1)), "w+"), x)
	os.system("ruby Sully_{0}.rb".format(str(x-1))) if x > 1 else 0

if __name__ == "__main__":
	main(5)
