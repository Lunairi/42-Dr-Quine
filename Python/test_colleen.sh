echo "\x1b[32;1m[ Testing Colleen Python ]\x1b[0m"
/usr/bin/env python3 Colleen.py > colleen_test
diff Colleen.py colleen_test | wc