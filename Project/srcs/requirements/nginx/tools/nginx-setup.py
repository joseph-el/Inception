import subprocess

with open('/etc/rc.conf', 'a') as rc_conf:
    rc_conf.write('rc_provide="loopback net"\n')

subprocess.run(['nginx', '-g', 'daemon off;'])
