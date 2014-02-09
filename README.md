Vagrant setup for nginx, node.js and express
#############################################

Setup:
------

```bash
$ vagrant box add base http://files.vagrantup.com/precise32.box
$ vagrant init
$ vagrant up
```

Starting the server:
--------------------
```bash
$ vagrant ssh
vagrant@precise32:~$ cd /vagrant_data/app
vagrant@precise32:~$ node server.js
```
The server should now be accessible from http://localhost:8080
