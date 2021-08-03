# abc.com
#  This is used to show demo for Chef CookBOOK

ABC.com - Static Website

1. Install apache - package

2. Create a New Doc root - /var/www/html/abc.com - directory
		

3. copy the code from git dev branch to New Doc root - git'
	- https://github.com/mailrahulsre/abc.com.git (dev/master branch)
	
4. open httpd.conf and change the doc root to new one which is created 2nd step - remote_file 
	- timeout 150sec

5. start, Enable & Reload  the apache - service 

## 1. Create a cookbook-

cd /etc/chef-repo/cookbooks

chef generate cookbook myfirstcb

cd myfirstcb

[root@ip-172-31-46-193 myfirstcb]# pwd
/home/ec2-user/chef-repo/cookbook/myfirstcb

cd /etc/chef-repo/cookbooks/myfirstcb/recipes

Copy the apache.rb from this Github Repo and run it.
