application = "iqvoc_inploy"
repository = 'git://github.com/innoq/iqvoc.git'
hosts = ['iqvoc.innoq.com']
path = '/var/www'
ssh_opts = '-A'
branch = 'inploy'
user = 'iqvoc'
login_shell = true
bundler_opts = '--deployment --without development test heroku'

# before_restarting_server do
#   rake "important:task"
#   run "important_command"
# end

# user = 'iqvoc'
# environment = 'production'
# branch = 'master'
# sudo = false
# cache_dirs = ['public/cache', 'tmp/cache']   # default ['public/cache']
# skip_steps = ['install_gems', 'clear_cache'] # default []
# app_folder = 'project_folder'                # default empty
# login_shell = true                           # default false
# bundler_opts = '--binstubs'                  # default '--deployment --without development test cucumber'
