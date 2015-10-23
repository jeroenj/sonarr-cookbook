user node[:sonarr][:user] do
  system true
  shell '/bin/bash'
  home node[:sonarr][:home]
  manage_home true
  system true
end

apt_repository 'sonarr' do
  uri node[:sonarr][:apt][:uri]
  distribution 'master'
  components %w(main)
  keyserver 'keyserver.ubuntu.com'
  key 'FDA5DFFC'
end

package 'nzbdrone'

template '/etc/init/sonarr.conf' do
  source 'init.conf.erb'
  variables user: node[:sonarr][:user]
end

service 'sonarr'

directory ::File.join(node[:sonarr][:home], '.config') do
  user node[:sonarr][:user]
  group node[:sonarr][:user]
end

directory ::File.join(node[:sonarr][:home], '.config/NzbDrone') do
  user node[:sonarr][:user]
  group node[:sonarr][:user]
end

template ::File.join(node[:sonarr][:home], '.config/NzbDrone/config.xml') do
  source 'config.xml.erb'
  user node[:sonarr][:user]
  group node[:sonarr][:user]
  mode 0600
  variables settings: node[:sonarr][:settings]
  notifies :restart, 'service[sonarr]'
end
