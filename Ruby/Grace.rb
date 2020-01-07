# Self printing Ruby

SOURCE = [
	'# Self printing Ruby',
	'',
	'SOURCE = [',
	']',
	'',
	'WRITESOURCE = -> (x, y, z, a) {',
	'	SOURCE[y..z].each { |b|',
	'		a == 0 ? (x.puts b) : (x.puts "	#{39.chr}#{b}#{39.chr},")',
	'	}',
	'}',
	'',
	'MAIN = -> {',
	'	file = File.open("Grace_kid.rb", "w")',
	'	WRITESOURCE.call(file, 0, 2, 0)',
	'	WRITESOURCE.call(file, 0, 19, 1)',
	'	file.puts "	#{39.chr}#{SOURCE[20]}#{39.chr}"',
	'	WRITESOURCE.call(file, 3, 20, 0)',
	'	file.close',
	'}',
	'',
	'MAIN.call'
]

WRITESOURCE = -> (x, y, z, a) {
	SOURCE[y..z].each { |b|
		a == 0 ? (x.puts b) : (x.puts "	#{39.chr}#{b}#{39.chr},")
	}
}

MAIN = -> {
	file = File.open("Grace_kid.rb", "w")
	WRITESOURCE.call(file, 0, 2, 0)
	WRITESOURCE.call(file, 0, 19, 1)
	file.puts "	#{39.chr}#{SOURCE[20]}#{39.chr}"
	WRITESOURCE.call(file, 3, 20, 0)
	file.close
}

MAIN.call
