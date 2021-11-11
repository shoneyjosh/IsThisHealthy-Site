# README

# Is This Healthy

### IsThisHealthy allows the user to check whether or not their recipe is healthy. The user can add ingredients to their recipe and the website will display all of the nutrition facts of their recipe. The website attempts to be a resource to those with lower incomes. Studies have shown that people with lower incomes tend to eat out on a more frequent basis. This website will give the user the ability to check their ingredients and see if the food they are eating is healthy or not.

***

### Install this repository:
git clone https://github.com/Shoney-Josh/IsThisHealthy.git
Once cloned, navigate to the servd/code directory (src) and install the project dependencies.

bundle install

*you may need to update the Ruby version to be compatible with your VM, if you receive an error message after trying to run `bundle install` you must alter the .ruby-version file 
- you can do this through a text editor by entering `vi .ruby-version` (if using Vim) or `notepad .ruby-version` (on Windows) and once in the file change the ruby version to match the version of ruby installed on your VM.  
- to check the version of Ruby that is installed in your VM enter `ruby -v`   
If bundle install fails with an error from the pg gem, run the following command

`sudo yum install postgresql-libs postgresql-devel`
If you still encounter errors, try restarting PostgreSQL.

For CentOS:

$ sudo systemctl restart postgresql
For MacOS:

$ pg_ctl -D /usr/local/var/postgres start
If you're still encountering errors, reach out to someone.

Create the databases and perform migration:
rake db:create
rake db:migrate:reset
rake db:migrate
rake db:seed

***

### If you are looking for instructions on how to use the web application you can find more info in the wiki of this repo.


