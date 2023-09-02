import subprocess
import time

time.sleep(5)

with open('/etc/rc.conf', 'a') as rc_conf:
    rc_conf.write('rc_provide="loopback net"\n')

subprocess.run(['/etc/init.d/php-fpm81', 'start'])

DOMAIN_NAME = 'yoel-idr'
DATABASE_USER = 'dexter'
ADMIN_USER = 'joseph'
DATABASE_PASSWORD = 'dexter'
USER_MAIL = 'joseph@me.com'

subprocess.run(['wp', 'core', 'install', '--url=' + DOMAIN_NAME, '--title=' + DATABASE_USER, '--admin_user=' + ADMIN_USER, '--admin_password=' + DATABASE_PASSWORD, '--admin_email=' + USER_MAIL])

subprocess.run(['wp', 'user', 'create', 'dexter', 'dexter@gmail.com', '--role=subscriber'])
subprocess.run(['wp', 'user', 'update', 'dexter', '--user_pass=dexter'])

subprocess.run(['wp', 'plugin', 'install', 'redis-cache'])
subprocess.run(['wp', 'plugin', 'activate', 'redis-cache'])
subprocess.run(['wp', 'redis', 'enable'])

subprocess.run(['chown', '-R', 'www-data:www-data', '/var/www/wordpress'])
subprocess.run(['chmod', '-R', '775', '/var/www/wordpress'])

subprocess.run(['/etc/init.d/php-fpm81', 'restart'])
subprocess.run(['/etc/init.d/php-fpm81', 'stop'])

subprocess.run(['exec'] + sys.argv[1:])
