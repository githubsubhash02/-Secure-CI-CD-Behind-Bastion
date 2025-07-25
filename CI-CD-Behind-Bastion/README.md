# 🔐 Ansible Deployment via Bastion (No Public IPs)


- 🔐 Bastion-only access
- 🛡️ Strict key-based SSH
- ❌ No persistent agents
- 🐳 Container-isolated Ansible execution

---

## 🧠 Solution Overview

### 1️⃣ SSH Config (`~/.ssh/config` or `ansible/ssh_config`)

```ssh
Host bastion
  Hostname 65.10.160.105
  User ec2-user
  IdentityFile /ansible/keys/Bastion-server-key.pem
  IdentitiesOnly yes

Host target
  Hostname 172.0.3.101
  User ec2-user
  IdentityFile /ansible/keys/Patch-key.pem
  ProxyJump bastion
  IdentitiesOnly yes


## command to run container
docker build -t ansible-container .  #create image by Docker file
docker run -d --name ansible-container   -v /data/jenkins/workspace:/workspace   ansible-container   #run ansible container


docker run -d --name jenkins   --restart unless-stopped   -p 8080:8080 -p 50000:50000   -v /data/jenkins:/var/jenkins   -v /var/run/docker.sock:/var/run/docker.sock   -v /tmp:/tmp   --user root   jenkins/jenkins:lts                            #run jenkins container


