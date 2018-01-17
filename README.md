## Simple Commands

```
# see all hosts
ansible --list-hosts all

# see hosts by Inventory
ansible -i dev --list-hosts all


# create ansible.cfg and define the [defaults] for Inventory
# to avoid the `-i dev`
ansible --list-hosts all
or
ansible --list-hosts "*"

# see all hosts for inventory group
ansible --list-hosts <group of the inventory>

eg.
ansible --list-hosts loadbalancer
ansible --list-hosts db01
ansible --list-hosts "app0*"
ansible --list-hosts database:control
ansible --list-hosts webserver[0]
ansible --list-hosts \!control

# ping module
ansible -m ping all

# command module, which is also the default
ansible -m command -a "hostname" all
```


## Playbooks execution
```
ansible-playbook loadbalancer.yml

```


## Roles

Create a scaffolding structure for your roles.
```
ansible-galaxy init control
```

## Facts

Collect the facts for a host

```
ansible -m setup <yourhost>
```


## Vault

```
ansible-vault create vault
```

## Limit app to run

```
ansible-playbook site.yml --limit app01
```

## List/Run/Skip tags

```
ansible-playbook site.yml --list-tags
```

Run by tag:
```
ansible-playbook site.yml --tags "packages"
```

Run and skip specific tags

```
ansible-playbook site.yml --skip-tags "packages"
```


## Run by step

```
ansible-playbook site.yml --step


ansible-playbook site.yml --list-task # find all tasks


ansible-playbook site.yml --start-at-task "name of the task" # starts running from given task name
```

# Syntax Checks

```
ansible-playbook --syntax-check site.yml


ansible-playbook --check site.yml # execution dry run
```
