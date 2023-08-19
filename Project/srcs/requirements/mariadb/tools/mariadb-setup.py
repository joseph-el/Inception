import subprocess
import time

DATABASE_NAME     = "wpWebsite"
DATABASE_USER     = "yoelidr"
DATABASE_PASSWORD = "dexter"
ROOT_PASSWORD     = "dexter"

subprocess.run(["service", "mariadb", "setup"])
subprocess.run(["service", "mariadb", "start"])

subprocess.run(["mariadb", "-u", "root", "-p", f"'{ROOT_PASSWORD}'", "-e", f"CREATE USER '{DATABASE_USER}'@'%' IDENTIFIED BY '{DATABASE_PASSWORD}'"])
subprocess.run(["mariadb", "-u", "root", "-p", f"'{ROOT_PASSWORD}'", "-e", f"GRANT ALL PRIVILEGES ON {DATABASE_NAME}.* TO '{DATABASE_USER}'@'%'"])
subprocess.run(["mariadb", "-u", "root", "-p", f"'{ROOT_PASSWORD}'", "-e", "FLUSH PRIVILEGES;"])
subprocess.run(["mariadb", "-u", "root", "-p", f"'{ROOT_PASSWORD}'", "-e", f"ALTER USER 'root'@'localhost' IDENTIFIED  BY '{ROOT_PASSWORD}'"])

time.sleep(2)

subprocess.run(["/etc/init.d/mariadb", "stop"])