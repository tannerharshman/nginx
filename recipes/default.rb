#
# Cookbook:: nginx_install
# Recipe:: default
#
# Copyright:: 2024, The Authors, All Rights Reserved.

package 'nginx' do
  action :install
end


service 'nginx' do
  action [ :enable, :start ]
end

