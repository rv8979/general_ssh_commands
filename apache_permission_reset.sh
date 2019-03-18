cd /var/www/
sudo chgrp -R www-data html
find . -type f -exec chmod 644 {} \;
find . -type d -exec chmod 755 {} \;


executable file 9 lines (7 sloc) 132 Bytes
#!/bin/bash

echo 'Enter the First Number :'
read a
echo 'Enter the Second Number :'
read b
x=$(expr "$a" + "$b")
echo $a + $b = $x
