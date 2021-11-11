# README

# Is This Healthy

### IsThisHealthy allows the user to check whether or not their recipe is healthy. The user can add ingredients to their recipe and the website will display all of the nutrition facts of their recipe. The website attempts to be a resource to those with lower incomes. Studies have shown that people with lower incomes tend to eat out on a more frequent basis. This website will give the user the ability to check their ingredients and see if the food they are eating is healthy or not.

***

### Install this repository:
# Installation Guide

### Known issue
If you see this...

`/Users/ethanzeigler/.rvm/gems/ruby-2.7.0@rails6/gems/activemodel-6.0.2.1/lib/active_model/type/value.rb:8: warning: The called method ``initialize' is defined here`

You're fine. It's actually an issue with rails' code itself that they need to fix. You can ignore it without issue.

## Development Setup

### Install Ruby on Rails & PostgreSQL for your machine:


> **TCNJ students using a VM:** 
Make sure that you have the correct version of Ruby and Rails installed on your VM by running the installruby.sh script, this is done by the following command:

    ./installruby.sh

The script only needs to be run once.  To check if it was successfully installed run the following to ensure that your VM has a Ruby version > 2.0.0 and that the Rails command is recognized.

    ruby -v
    
    rails -v


### Install this repository: 

1. Click the `Use this template` option at the top of this project page on GitHub (<https://github.com/TCNJ-SE/SE-Rails-starter-kit>).
2. Choose your GitHub id from the **Owner** dropdown.
3. Enter a repository name.
4. Choose the `Private` option.
5. You do not need to include all branches.
6. Click `Create repository from template`  

Once your new project is created, you'll need to clone it to get a local copy of all the files. We're going to use SSH to clone the project, which requires having an SSH key set up with your GitHub account. That whole process is explained in this page: [Setting up SSH keys with GitHub](Setting_up_SSH_keys_GitHub.md).

### Installing dependencies

Now that you've cloned your repository, navigate to the `<repo_name>/src/` folder. This folder is where all the code files are located. (There's also a `<repo_name>/docs/` folder you may have noticed that can hold relevant project documents and diagrams). Here, in the src directory, you now have to install the project dependencies. Run the following commands:

`bundle install`
`yarn install`

If you encounter errors, try restarting PostgreSQL and installing additional updates.

* For CentOS:
```sh
$ systemctl restart postgresql
$ sudo yum install postgresql96-libs
$ sudo yum install postgresql96-devel
```

* For MacOS:
```sh
$ pg_ctl -D /usr/local/var/postgres start
```

> **TCNJ NOTE:** If issues continue, there's something wrong with your psql installation.

* Please run the following. `sudo yum install postgresql-libs postgresql-devel`

* If the errors still continue, look up the error you're receiving for more advice.

Once bundle install and yarn install have successfully run you can begin to create the database.

### Create the databases and perform migration:

    rake db:create
    
    rake db:migrate:reset
    
    rake db:migrate
    
    rake db:seed

### Finally, run the app.
Find your VM’s ip address by running the command

`ip addr show eth0`

**Please see the instructions to set up the Virtual Machine Setup (given at the beginning of the semester) to review how to run the server. ** 

Use the `--binding` flag or you won't be able to view the site from your browser due to the way the HPC handles VM connections.

Run the server by running:

`rails s (or rails server) --binding xxx.xxx.xxx.xxx`

Note that you won't be able to run the rails server unless you are in the `src` folder.

The app should be available in the browser at http://csc415-serverXX.hpc.tcnj.edu:3000/ 
Where XX is your server number.

***

### If you are looking for instructions on how to use the web application you can find more info in the wiki of this repo.


