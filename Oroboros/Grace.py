# def printsource():
# 	source = [
# 		'# Oroboros Python -> Ruby',
# 		'',
# 		'def printsource():',
# 		'	source = [',
# 		'	]',
# 		'	for x in range(18, 22):',
# 		'		print(source[x])',
# 		'	for x in range(0, 41):',
# 		'		print("		{0}{1}{2},".format(chr(39), source[x], chr(39)))',
# 		'	for x in range(22, 41):',
# 		'		print(source[x])',
# 		'',
# 		'def main():',
# 		'	# This is a comment in python',
# 		'	printsource()',
# 		'',
# 		'if __name__ == "__main__":',
# 		'	main()',
# 		'# Oroboros Ruby -> Python',
# 		'',
# 		'def print',
# 		'	source = [',
# 		'	]',
# 		'	for x in 0..3',
# 		'		puts source[x]',
# 		'	end',
# 		'	q = 39',
# 		'	for x in 0..40',
# 		'		puts "		#{q.chr}#{source[x]}#{q.chr},"',
# 		'	end',
# 		'	for x in 4..17',
# 		'		puts source[x]',
# 		'	end',
# 		'end',
# 		'',
# 		'def main',
# 		'	# This is a comment in ruby',
# 		'	print',
# 		'end',
# 		'',
# 		'main()',
# 	]
# 	for x in range(18, 22):
# 		print(source[x])
# 	for x in range(0, 41):
# 		print("		{0}{1}{2},".format(chr(39), source[x], chr(39)))
# 	for x in range(22, 41):
# 		print(source[x])

# def main():
# 	# This is a comment in python
# 	printsource()

# if __name__ == "__main__":
# 	main()


test = lambda: \
	print("test") or \
	print("test2") or \
	print("test3") or \
	print("test4") or \
	print("test5")


MAIN = lambda x: \
	x.write('t123123213estestestest') and \
	x.write('asdasdsad')

test()
MAIN(open("test.txt", 'w+'))





































