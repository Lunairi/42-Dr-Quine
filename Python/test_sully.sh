echo "\x1b[32;1m[ Testing Sully Python ]\x1b[0m"
/usr/bin/env python3 Sully.py
echo "\x1b[32;1m[ Sully.py vs Sully_0.py ]\x1b[0m"
diff Sully.py Sully_0.py ; true
echo "\x1b[32;1m[ Sully_1.py vs Sully_4.py ]\x1b[0m"
diff Sully_1.py Sully_4.py ; true
echo "\x1b[32;1m[ Sully_2.py vs Sully_3.py ]\x1b[0m"
diff Sully_2.py Sully_3.py ; true
