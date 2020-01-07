# Self printing Ruby

SOURCE = [
	'# Self printing Ruby',
	'',
	'SOURCE = [',
	']',
	'',
	'WRITESOURCE = -> (x, y, z, a) {',
	'	SOURCE[y..z].each { |b| a == 0 ? (x.puts b) : (x.puts "	#{39.chr}#{b}#{39.chr},") }',
	'}',
	'',
	'MAIN = -> (x) {',
	'	file = File.open("Sully_#{x - 1}.rb", "w")',
	'	WRITESOURCE.call(file, 0, 2, 0)',
	'	WRITESOURCE.call(file, 0, 19, 1)',
	'	WRITESOURCE.call(file, 3, 18, 0)',
	'	file.puts "MAIN.call(#{x-1})"',
	'	file.close',
	'	x > 1 ? exec("ruby Sully_#{x - 1}.rb") : 0;',
	'}',
	'',
]

WRITESOURCE = -> (x, y, z, a) {
	SOURCE[y..z].each { |b| a == 0 ? (x.puts b) : (x.puts "	#{39.chr}#{b}#{39.chr},") }
}

MAIN = -> (x) {
	file = File.open("Sully_#{x - 1}.rb", "w")
	WRITESOURCE.call(file, 0, 2, 0)
	WRITESOURCE.call(file, 0, 19, 1)
	WRITESOURCE.call(file, 3, 18, 0)
	file.puts "MAIN.call(#{x-1})"
	file.close
	x > 1 ? exec("ruby Sully_#{x - 1}.rb") : 0;
}

MAIN.call(5)
