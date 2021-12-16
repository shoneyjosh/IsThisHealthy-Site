# README

# Is This Healthy

### IsThisHealthy allows the user to check whether or not their recipe is healthy. The user can add ingredients to their recipe and the website will display all of the nutrition facts of their recipe. The website attempts to be a resource to those with lower incomes. Studies have shown that people with lower incomes tend to eat out on a more frequent basis. This website will give the user the ability to check their ingredients and see if the food they are eating is healthy or not.

***

### Install this repository:
# Installation Guide

## Development Setup

### Install Ruby on Rails & PostgreSQL for your machine:


> **TCNJ students using a VM:** 
Make sure that you have the correct version of Ruby and Rails installed  by running the installruby.sh script, this is done by the following command:

    ./installruby.sh

The script only needs to be run once.  To check if it was successfully installed run the following to ensure that your VM has a Ruby version > 2.0.0 and that the Rails command is recognized.

    ruby -v
    
    rails -v


### Install this repository: 

type git clone https://github.com/Shoney-Josh/IsThisHealthy in your terminal

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


