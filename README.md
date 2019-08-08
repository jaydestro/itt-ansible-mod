# itt-ansible-mod

Grabs ansible roles in the wrapper, installs them locally then deploys to IP specified.

Installs on host:

* MongoDB
* DotNet Core
* PostreSQL
* NodeJS

# To run

git clone

`bash ansible_wrapper.sh`

Provide the single IP for your host and hit enter.  This will store your host IP in `~/.ansible/hosts/` 
