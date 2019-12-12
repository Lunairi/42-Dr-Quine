echo "\x1b[32;1m[ Testing Colleen Oroboros ]\x1b[0m"
echo "\x1b[35;1m[ 1st Line - Ruby to Python Output ]\x1b[0m"
echo "\x1b[34;1m[ 2nd Line - Python to Ruby Output ]\x1b[0m"
ruby Colleen.rb > py_colleen_test
python Colleen.py > rb_colleen_test
diff Colleen.rb rb_colleen_test | wc
diff Colleen.py py_colleen_test | wc