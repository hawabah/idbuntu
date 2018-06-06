# idbuntu

    ideasbox + ubuntu == idbuntu.

This playbook help us to install and configure Ubuntu on the laptops we ship
with BSF's Ideasbox.

## Features

* Installs a bunch of softwares -- `tor-browser` and `skype` included
* Configures a session that is used as a template for guest sessions
* Many more to come

## HOWTO

### Bootstrap

Install Ubuntu. Open a terminal, and bootstrap the laptop:

    $ curl http://drop.bsf-intranet.org/idbuntu/go.sh | sudo bash -

This script basically ensures one can SSH the laptops and display the local
IP address so you can feed your ansible inventory file.

### ansible all the things!

Example `hosts` file:

    malakasa-pc1    ansible_ssh_host=10.10.8.96
    malakasa-pc2    ansible_ssh_host=10.10.8.217
    malakasa-pc3    ansible_ssh_host=10.10.8.189
    malakasa-pc4    ansible_ssh_host=10.10.8.222
    
    [malakasa]
    malakasa-pc[1:4]

Run:

    ansible-playbook -l malakasa idbuntu.yml
