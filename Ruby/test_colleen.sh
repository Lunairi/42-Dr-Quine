echo "\x1b[32;1m[ Testing Colleen Ruby ]\x1b[0m"
ruby Colleen.rb > colleen_test
diff Colleen.rb colleen_test | wc