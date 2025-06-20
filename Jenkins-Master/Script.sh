apt update
apt install -y sudo wget vim

sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y

sudo apt update
sudo apt install -y fontconfig openjdk-21-jre
java -version

apt install openssh-* -y
/usr/sbin/sshd
service ssh start
apt install net-tools iputils-ping -y
