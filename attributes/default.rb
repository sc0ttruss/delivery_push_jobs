
# the default location for files for our kitchen setup is in a local share
# ~/chef-kits/chef.  This is mounted to /mnt/share/chef on the target vm
# if you alreddy have these in an rpm repo, set source_files to false
# You can also replae file:// with https:// for remote repos.
default['push_jobs']['use_package_manager'] = false
default['push_jobs']['base_package_url'] = 'file:///mnt/share/chef'
# note the package "name" must match the name used by yum/rpm etc.
# get your package list here https://packages.chef.io/stable/el/7/
# default['push_jobs']['packages']['push-jobs-client'] ='push-jobs-client-1.3.4-1.el7.x86_64.rpm'
default['push_jobs']['packages']['push-jobs-client'] ='push-jobs-client-2.1.1-1.el7.x86_64.rpm'
# default['push_jobs']['packages']['runit'] ='runit-2.1.2-3.el7.centos.x86_64.rpm'
# automate and SUpermarket URL's to retrieve their certificates
default['push_jobs']['url']['chef'] = 'chef.myorg.chefdemo.net'
default['push_jobs']['url']['delivery'] = 'automate.myorg.chefdemo.net'
default['push_jobs']['url']['supermarket'] = 'supermarket.myorg.chefdemo.net'

# assume this node has alredy been bootstrapped
default['push_jobs']['url_chef']  = 'https://chef.myorg.chefdemo.net'
