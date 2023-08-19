import subprocess
import time

USER_MAIL         = "joseph@me.com"
ADMIN_USER        = "elidrissi"
DOMAIN_NAME       = "yoelidr.42.fr"
DATABASE_NAME     = "wpWebsite"
DATABASE_USER     = "yoelidr"
DATABASE_HOST     = "mariadb"
ROOT_PASSWORD     = "dexter"
DATABASE_PASSWORD = "dexter"

with open('/etc/rc.conf', 'a') as rc_conf:
    rc_conf.write('rc_provide="loopback net"\n')
import subprocess

subprocess.run(["chown", "-R", "www-data:www-data", "/var/www/wordpress"])

subprocess.run(['/etc/init.d/php-fpm81', 'setup'])
subprocess.run(['/etc/init.d/php-fpm81', 'start'])

subprocess.run(['wp', 'core', 'install', '--url=${DOMAIN_NAME}', '--title=${DATABASE_USER}', '--admin_user=${ADMIN_USER}', '--admin_password=${DATABASE_PASSWORD}', '--admin_email=${USER_MAIL}'])
subprocess.run(['wp', 'user', 'create', 'dexter', 'dexter@gmail.com', '--role=subscriber'])
subprocess.run(['wp', 'plugin', 'install', 'redis-cache', '--activate'])

time.sleep(1)
subprocess.run(['/etc/init.d/php-fpm81', 'stop'])
