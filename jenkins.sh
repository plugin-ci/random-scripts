apt-get update && 
apt-get upgrade -y && 
apt-get install python-software-properties -y && 
add-apt-repository ppa:webupd8team/java && 
apt-get update && 
apt-get install oracle-java7-installer -y &&
adduser --system --home /var/lib/jenkins --no-create-home --ingroup nogroup --disabled-password --shell /bin/bash jenkins && 
mkdir /var/run/jenkins -m 0777 && 
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add - && 
sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list' && 
apt-get update && 
apt-get install jenkins -y &&
service jenkins restart
