apt update
apt install -y sudo wget vim
apt update
apt install -y fontconfig openjdk-21-jre
java -version
apt install openssh-* -y
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
echo "root:admin" | chpasswd
service ssh restart
