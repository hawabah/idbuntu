# Ansible setup

This documentation explains how to get a working environment to use the idbuntu
playbook. You will install Ansible, then clone this repository.

Based on Debian 9.

## Install Ansible

We choose to use a system-wide pip install. If you don't like it, you probably
don't need to follow this howto.

Install the required dependencies:

```shell
sudo apt-get install python3-pip git
```

Install ansible:

```shell
sudo pip3 install ansible
```

From now on, `ansible` should run fine:

```text
$ ansible --version
ansible 2.8.6
  config file = None
  configured module search path = ['/home/user/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/local/lib/python3.5/dist-packages/ansible
  executable location = /usr/local/bin/ansible
  python version = 3.5.3 (default, Sep 27 2018, 17:25:39) [GCC 6.3.0 20170516
```

## Clone the idbuntu repository

```shell
git clone https://github.com/bibliosansfrontieres/idbuntu
```

From now on, this shell can run the `idbuntu` playbook against the targets
you'll define in your inventory.
