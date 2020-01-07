# Self printing python

SOURCE = [
	'# Self printing python',
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
	'	x.write(("{0}".format(chr(10))).join(SOURCE[0:3])) and ',
	'	WRITESOURCE(x, 0, 24) and ',
	'	x.write(("{0}".format(chr(10))).join(SOURCE[3:5])) and ',
	'	x.write("{0}".format(chr(10))) and ',
	'	x.write(("{0}{1}".format(chr(92), chr(10))).join(SOURCE[5:9])) and ',
	'	x.write("{0}{0}".format(chr(10))) and ',
	'	x.write(("{0}{1}".format(chr(92), chr(10))).join(SOURCE[10:22])) and ',
	'	x.write("{0}{0}".format(chr(10))) and ',
	'	x.write(SOURCE[23]) and ',
	'	x.write("{0}".format(chr(10))) and ',
	'	x.close()',
	'',
	'MAIN(open("Grace_kid.py", "w+")) ',
]

WRITESOURCE = lambda x, y, z: \
	x.write("{0}	{1}".format(chr(10), chr(39))) and \
	x.write(("{0}{1}{2}	{0}".format(chr(39), chr(44), chr(10))).join(SOURCE[y:z])) and \
	x.write(("{0}{1}{2}".format(chr(39), chr(44), chr(10))))

MAIN = lambda x: \
	x.write(("{0}".format(chr(10))).join(SOURCE[0:3])) and \
	WRITESOURCE(x, 0, 24) and \
	x.write(("{0}".format(chr(10))).join(SOURCE[3:5])) and \
	x.write("{0}".format(chr(10))) and \
	x.write(("{0}{1}".format(chr(92), chr(10))).join(SOURCE[5:9])) and \
	x.write("{0}{0}".format(chr(10))) and \
	x.write(("{0}{1}".format(chr(92), chr(10))).join(SOURCE[10:22])) and \
	x.write("{0}{0}".format(chr(10))) and \
	x.write(SOURCE[23]) and \
	x.write("{0}".format(chr(10))) and \
	x.close()

MAIN(open("Grace_kid.py", "w+")) 
