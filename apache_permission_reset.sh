cd /var/www/
sudo chgrp -R www-data html
find . -type f -exec chmod 644 {} \;
find . -type d -exec chmod 755 {} \;
