rvm_gem 'god' do
  action :install
end

rvm_wrapper 'bootup' do
  binary 'god'
end

cookbook_file '/etc/init.d/god' do
  source 'god'
  mode '0755'
end

cookbook_file '/etc/god.conf' do
  source 'god.conf'
end

directory '/etc/god' do
  mode '0644'
end

directory '/var/log/god' do
  mode '0775'
  group node['god']['group']
end

service 'god' do
  action [:enable, :start]
end
