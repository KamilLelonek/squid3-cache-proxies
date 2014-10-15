# Suid3 with Ansible and Vagrant

## Prerequisites

You need to have installed the following components:

- [Ruby](https://www.ruby-lang.org/en/installation/)
- [Vagrant](https://www.vagrantup.com/downloads.html)
- [Ansible](http://docs.ansible.com/intro_installation.html)

## Bootstraping

To create virtual machines run in project directory:

    vagrant up
    
The command above will download ubuntu and build three virtual machines with `squid3` installed and running.

## Usage

Virtual machines parameters are as follows:

|             | squid1                      | squid2                      | squid3                      |
|-------------|-----------------------------|-----------------------------|-----------------------------|
| mac address | `080000000101`                | `080000000201`                | `080000000301`                |
| eth1 config | `192.168.56.101` `080000000102` | `192.168.56.102` `080000000202` | `192.168.56.103` `080000000302` |


You can connect to either of them:

    vagrant ssh squid<VERSION>
    
where `<VERSION>` is just machine number `1, 2 or 3`.

## Help

If anything goes wrong you can destroy previously created machines by:

    vagrant destroy
    
That won't delete downloaded Ubuntu image. Another useful commands are:

- `vagrant provision` - setup machines once again
- `vagrant reload` - restart machines and apply new configuration