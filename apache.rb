#Install apache - package
package 'Install Apache' do
  case node[:platform]
  when 'redhat', 'centos'
    package_name 'httpd'
  when 'ubuntu', 'debian'
    package_name 'apache2'
  end
end

#Create a New Doc root - /var/www/html/abc.com - directory

directory '/var/www/html/abc.com' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  recursive true
end

#copy the code from git dev branch to New Doc root - git

git '/var/www/html/abc.com' do
  repository 'https://github.com/mailrahulsre/abc.com.git'
  revision 'dev'
  action :sync
end

#change httpd.conf

remote_file '/etc/httpd/conf/httpd.conf' do
  source 'file:///var/www/html/abc.com/httpd.conf'
  mode '0755'
  owner 'root'
  group 'root'
end

#restart and Enable the apache - service
service 'httpd' do
        action [ :enable, :start, :reload ]
end
