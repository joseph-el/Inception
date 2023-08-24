import subprocess

subprocess.run(["mkdir", "-p", "/var/www/wordpress"])

rc_conf_content = 'rc_provide="loopback net"\n'
with open("/etc/rc.conf", "a") as rc_conf_file:
    rc_conf_file.write(rc_conf_content)
    
subprocess.run(["nginx", "-g", "daemon off;"])

