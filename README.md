_tested only on Fedora 25_

Create a Fedora machine (I use libvirt) with at least 8G RAM, 2 vCPU and 20G of
disk space. Grab its IP (or hostname), then run:
```
./run.sh <IP or hostname>
```
The script will setup (using ansible) the machine to be used to provision Openshift
Origin and CRI-O on it. The playbook outputs a final message with the command to
be run using `openshift/openshift-ansible`.
