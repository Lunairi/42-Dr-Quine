echo "\x1b[32;1m[ Testing Grace Oroboros ]\x1b[0m"
echo "\x1b[35;1m[ 1st Line - Ruby Grace to Grace_kid.py Python Output ]\x1b[0m"
echo "\x1b[34;1m[ 2nd Line - Python Grace to Grace_kid.rb Ruby Output ]\x1b[0m"
ruby Grace.rb
/usr/bin/env python3 Grace.py
diff Grace.rb Grace_kid.py | wc
diff Grace.py Grace_kid.rb | wc