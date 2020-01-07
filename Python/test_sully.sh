echo "\x1b[32;1m[ Testing Sully Python ]\x1b[0m"
/usr/bin/env python3 Sully.py
echo "\x1b[32;1m[ Sully.rb vs Sully_0.rb ]\x1b[0m"
diff Sully.py Sully_0.py ; true
echo "\x1b[32;1m[ Sully_1.rb vs Sully_4.rb ]\x1b[0m"
diff Sully_1.py Sully_4.py ; true
echo "\x1b[32;1m[ Sully_2.rb vs Sully_3.rb ]\x1b[0m"
diff Sully_2.py Sully_3.py ; true
