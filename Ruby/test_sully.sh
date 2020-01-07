echo "\x1b[32;1m[ Testing Sully Ruby ]\x1b[0m"
ruby Sully.rb
echo "\x1b[32;1m[ Sully.rb vs Sully_0.rb ]\x1b[0m"
diff Sully.rb Sully_0.rb ; true
echo "\x1b[32;1m[ Sully_1.rb vs Sully_4.rb ]\x1b[0m"
diff Sully_1.rb Sully_4.rb ; true
echo "\x1b[32;1m[ Sully_2.rb vs Sully_3.rb ]\x1b[0m"
diff Sully_2.rb Sully_3.rb ; true
