from fabric3.api import cd, env, run

import os.path

env.hosts = ['earth']
env.ssh_config_path = '~/.ssh/config'
env.use_ssh_config = True


def deploy():
    BASE_DIR = '/var/www/portfolio/'
    
    with cd(BASE_DIR):
        run('git pull origin master')
