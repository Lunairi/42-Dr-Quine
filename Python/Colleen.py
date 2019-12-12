# Self Printing Python

def printsource():
	source = [
		'# Self Printing Python',
		'',
		'def printsource():',
		'	source = [',
		'	]',
		'	for x in range(0, 4):',
		'		print(source[x])',
		'	for x in range(0, 18):',
		'		print("		{0}{1}{2},".format(chr(39), source[x], chr(39)))',
		'	for x in range(4, 18):',
		'		print(source[x])',
		'',
		'def main():',
		'	# This is a comment in python',
		'	printsource()',
		'',
		'if __name__ == "__main__":',
		'	main()',
	]
	for x in range(0, 4):
		print(source[x])
	for x in range(0, 18):
		print("		{0}{1}{2},".format(chr(39), source[x], chr(39)))
	for x in range(4, 18):
		print(source[x])

def main():
	# This is a comment in python
	printsource()

if __name__ == "__main__":
	main()
