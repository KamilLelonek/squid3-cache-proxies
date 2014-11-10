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

|             | squid1                          | squid2                          | squid3                          |
|-------------|---------------------------------|---------------------------------|---------------------------------|
| mac address | `080000000101`                  | `080000000201`                  | `080000000301`                  |
| eth1 config | `192.168.56.101` `080000000102` | `192.168.56.102` `080000000202` | `192.168.56.103` `080000000302` |

You can connect to either of them:

    vagrant ssh squid<VERSION>

where `<VERSION>` is just machine number `1, 2 or 3`.

You can request for server data through particular proxy:

  curl -x <proxy_ip>:3128 http://www.example.com/

## Aliases

You can use some useful commands to manage `squid3`:

- `showcache`
- `clearcache`
- `showlogs`
- `clearlogs`

## Hierarchies

![hierarchies](https://d2oawfjgoy88bd.cloudfront.net/538df4ae007791166b92a197/538df4c8007791166b92a19a/5460836238d3871419ab800a.png?Expires=1415697719&Signature=DCW26fcrGKUiAnwr-zhyWqyOOPbUdljtmKFkNrs7Iy5eXIuUU0Majz7tEaZMSOemPZBBU6lUA8tqDJOvzNnI8JozdCvJXCoPzLKJX8JgTsxFw7OUlVS2dyiKi~8qtCYMUlWABBzYrW-RY8uZ1EreaRl6-kPDyC2eacIXcMt0mypWAuyiF-jksoN5iaZj-0tdRvZBiy9LRab-xF2a63T3nMY8AYqsX8tSZXyQJKjR1syHDpx81g5JFdta5WPRSV2iY0RMYbDPlKOH6Hg2jIpbAW5BCXjP6VngWNDphWityvLbp-nn6VNGxQSQcxUCCdIyVzAooUWwLtzbOkbHJ4crnQ__&Key-Pair-Id=APKAJHEJJBIZWFB73RSA)

To setup particular hierary:

    ./scripts/run_hierarchy <NUMBER>

To fetch logs from all machines:

    ./scripts/fetch_logs

To clear logs and cache on all machines:

    ./scripts/clear_cache_and_logs

## Help

If anything goes wrong you can destroy previously created machines by:

    vagrant destroy

That won't delete downloaded Ubuntu image. Another useful commands are:

- `vagrant provision` - setup machines once again
- `vagrant reload` - restart machines and apply new configuration
