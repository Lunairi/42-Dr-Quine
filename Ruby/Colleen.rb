# Self Printing Ruby

def print
	source = [
		'# Self Printing Ruby',
		'',
		'def print',
		'	source = [',
		'	]',
		'	for x in 0..3',
		'		puts source[x]',
		'	end',
		'	q = 39',
		'	for x in 0..22',
		'		puts "		#{q.chr}#{source[x]}#{q.chr},"',
		'	end',
		'	for x in 4..22',
		'		puts source[x]',
		'	end',
		'end',
		'',
		'def main',
		'	# This is a comment in ruby',
		'	print',
		'end',
		'',
		'main()',
	]
	for x in 0..3
		puts source[x]
	end
	q = 39
	for x in 0..22
		puts "		#{q.chr}#{source[x]}#{q.chr},"
	end
	for x in 4..22
		puts source[x]
	end
end

def main
	# This is a comment in ruby
	print
end

main()
