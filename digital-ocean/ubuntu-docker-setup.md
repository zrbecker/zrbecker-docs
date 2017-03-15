# Installing Docker on Digital Ocean

## Creating the droplet on Digital Ocean
Here I am just documenting the options that I used. Of course we could change
many of the options I chose here.
- Using Ubuntu 16.04.2 x64 image
- 512MB/1CPU instance size
- SFO2 region
- No additional options (options listed for future discussion)
  - Private networking
  - Backups
  - IPv6
  - User data
  - Monitoring
- SSH Keys (Added Home Desktop SSH key)
- 1 Droplet
- Default hostname "ubuntu-512mb-sfo2-01"
- No tags

## Add User with sudo permissions
```bash
useradd -m -d /home/zrbecker -s /bin/bash -G sudo -U zrbecker
passwd zrbecker
mkdir -p /home/zrbecker/.ssh
cp ~/.ssh/authorized_keys /home/zrbecker/.ssh/authorized_keys
chown -R zrbecker:zrbecker /home/zrbecker/.ssh
chmod 0770 /home/zrbecker/.ssh
chmod 0660 /home/zrbecker/.ssh/authorized_keys
```

## Disable root login for ssh
```bash
sudo vim /etc/ssh/sshd_config
```

Change `PermitRootLogin yes` to `PermitRootLogin no`

```bash
sudo service ssh restart
```

## Disable password login for ssh
This is disabled by default on digital ocean

## Installing Docker
```bash
sudo apt-get -y install apt-transport-https ca-certificates curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install docker-ce
```

## Test Docker
```bash
sudo docker run ubuntu echo "Hello World!"
```

## Stop Docker from editing iptables
```bash
sudo printf "{\n  \"iptables\": false\n}\n" > /etc/docker/daemon.json
sudo service docker stop
sudo service docker start
```

## Enable firewall
```bash
sudo ufw default deny incoming
sudo ufw allow ssh
sudo ufw enable
```

## Change login message (maybe)
TODO

## What assumptions are being made?
Right now the assumptions are that we are using Ubuntu 16.04. However, we should
be able to adjust the above commands for another distribution.