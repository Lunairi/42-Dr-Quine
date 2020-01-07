# Dr Quine

A puzzle project with the concept of Quine and re-creating quines based off the requirements stated in the PDF


There are three Quines that we need to implemented
* Colleen
	* Must have a main function
	* Must have two diff comments
	* One comment must be inside the main
	* One must be outside of the program
	* A second function is required that must be used
* Grace
	* No main declared
	* Three defines only
	* One comment
	* Must be ran by calling a macro
* Sully
	* Starts at index 5, must create a copy of itself called Sully_X.c where X = value
	* Value will decrement upon each creation
	* The only difference between copies is where integer is decrementing from 5..0
	* Must have somewhere in code clearly where that specific integer is declared for evaluation purposes


I chose to do C, ASM, Python and Ruby. The Python and Ruby are bonuses, and also done as a Oroboros style as well. I enjoy puzzle so this was more for fun then anything else.


# Issue with Grace

The main challenge I had was with grace since Python & Ruby does not have defines. Below is how I went about trying a different hacky solution (I do not recommend coding at all the way I did for these:)
* Ruby
	* For ruby I just chose to use lambdas to try and simulate something close to defines. Very simple, no real challenge other then having to think about something similar.
* Python
	* Since I decided to use lambdas in Ruby I decided to also use lambdas in Python
	* Using lambdas in Python is very specific and is nowhere flexible like Ruby
	* I had to come up with really whacky solution using operators to trick lambda into letting me run and process multiple methods
	* This implementation is incredibly ugly


# Oroboros

An oroboros is where you have 2 or more quines printing each other's sources. I chose to do Ruby & Python to experiment a bit with Oroboros. I coolest part is when you do Sully with Oroboros. They will create alternating files of each other's source. Here's what I mean:
* Python Sully.py will create Sully_4.rb, which creates Sully_3.py, which creates Sully_2.rb, then Sully_1.py, and finally Sully_0.rb
* Ruby Sully.rb creates Sully_4.py, Sully_3.rb, Sully_2.py, Sully_1.rb, Sully_0.py


# Trying out my Quines

To try out my quines it's simple. They all have makefiles and shell scripts for simple testing. Simply run 'make all' to run them, and 'make clean' to clear junk files. To test each one individually, run 'sh test.sh' for the respective ones.