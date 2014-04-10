# Encoding: utf-8
#
# Cookbook Name:: magento-ce-varnish-18
# Recipe:: default
#
# Copyright 2014, Rackspace
#

patch_applied = '/root/.varnish.18.patch.applied'

unless File.exist?(patch_applied)

  if platform_family?('rhel')
    include_recipe 'yum'
  else
    include_recipe 'apt'
  end

  include_recipe 'git::default'

  repo = 'https://bitbucket.org/supportdesk_nl/turpertine-formkey-workaround'

  git "#{Chef::Config[:file_cache_path]}/turpertine-formkey-workaround" do
    repository repo
    reference '574ff1851618dc0e76e4274001fbf3efb89c99f6'
    action :sync
  end

  if File.directory?(node['rax_mag_patch']['dest_dir'])
    execute 'Copy patch into Magento' do
      command "cp -r #{File.join(Chef::Config[:file_cache_path],
                                 'turpertine-formkey-workaround',
                                 'app')} #{node['rax_mag_patch']['dest_dir']}"
    end

    execute 'Touching installed file' do
      command "touch #{patch_applied}"
    end
  else
    log 'Log Magento directory does not exist' do
      level :warn
      message "Magento directory '#{node['rax_mag_patch']['dest_dir']}' does "\
              'not exist'
    end
  end

end
