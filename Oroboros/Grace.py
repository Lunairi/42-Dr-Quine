# Python to Ruby Oroboros

SOURCE = [
	'# Python to Ruby Oroboros',
	'',
	'SOURCE = [',
	']',
	'',
	'WRITESOURCE = lambda x, y, z: ',
	'	x.write("{0}	{1}".format(chr(10), chr(39))) and ',
	'	x.write(("{0}{1}{2}	{0}".format(chr(39), chr(44), chr(10))).join(SOURCE[y:z])) and ',
	'	x.write(("{0}{1}{2}".format(chr(39), chr(44), chr(10))))',
	'',
	'MAIN = lambda x: ',
	'	x.write(("{0}".format(chr(10))).join(SOURCE[18:21])) and ',
	'	WRITESOURCE(x, 0, 41) and ',
	'	x.write(("{0}".format(chr(10))).join(SOURCE[21:41])) and ',
	'	x.write("{0}".format(chr(10))) and ',
	'	x.close()',
	'',
	'MAIN(open("Grace_kid.py", "w+")) ',
	'# Ruby to Python Oroboros',
	'',
	'SOURCE = [',
	']',
	'',
	'WRITESOURCE = -> (x, y, z, a) {',
	'	a < 2 ? (SOURCE[y..z].each { |b| a == 0 ? (x.puts "#{b}#{92.chr}") : (x.puts "	#{39.chr}#{b}#{39.chr},")} ) ',
	'		: (SOURCE[y..z].each { |b| x.puts b } )',
	'}',
	'',
	'MAIN = -> {',
	'	file = File.open("Grace_kid.rb", "w")',
	'	WRITESOURCE.call(file, 0, 2, 2)',
	'	WRITESOURCE.call(file, 0, 40, 1)',
	'	WRITESOURCE.call(file, 3, 4, 2)',
	'	WRITESOURCE.call(file, 5, 7, 0)',
	'	WRITESOURCE.call(file, 8, 9, 2)',
	'	WRITESOURCE.call(file, 10, 14, 0)',
	'	WRITESOURCE.call(file, 15, 17, 2)',
	'	file.close',
	'}',
	'',
	'MAIN.call',
]

WRITESOURCE = lambda x, y, z: \
	x.write("{0}	{1}".format(chr(10), chr(39))) and \
	x.write(("{0}{1}{2}	{0}".format(chr(39), chr(44), chr(10))).join(SOURCE[y:z])) and \
	x.write(("{0}{1}{2}".format(chr(39), chr(44), chr(10))))

MAIN = lambda x: \
	x.write(("{0}".format(chr(10))).join(SOURCE[18:21])) and \
	WRITESOURCE(x, 0, 41) and \
	x.write(("{0}".format(chr(10))).join(SOURCE[21:41])) and \
	x.write("{0}".format(chr(10))) and \
	x.close()

MAIN(open("Grace_kid.py", "w+")) 
