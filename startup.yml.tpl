#cloud-config
package_update: true

packages:
  - apt-transport-https
  - ca-certificates
  - curl
  - gnupg-agent
  - software-properties-common

runcmd:
  - curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  - add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
  - apt-get update -y
  - apt-get install docker-ce docker-ce-cli containerd.io
  - sudo apt install -y docker-compose
  - sudo service docker start
  - sudo usermod -aG docker $USER
  - cd /etc && docker-compose up -d

write_files:
  - encoding: b64
    content: ${COMPOSE_CONTENT}
    path: /etc/docker-compose.yml
    permissions: '0644'