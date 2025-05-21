##Instalar jenkins 
#sudo yum update -y
sudo dnf install epel-release -y
yum install git unzip dos2unix java-17-openjdk-devel git -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo --no-check-certificate
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install jenkins -y
sudo systemctl start jenkins
sudo  systemctl enable jenkins
sudo  systemctl status jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword 




cd /
git clone https://github.com/agarciafer/jenkins.git
cd /jenkins

unzip tomcat-prod.zip -d /
unzip tomcat-staging.zip -d /
unzip tomcat-docker-compose.zip -d /
unzip jenkins-docker-compose.zip -d /

chmod 777 /tomcat-prod/bin/*.sh
chmod 777 /tomcat-staging/bin/*.sh


/var/lib/jenkins
grep -r -w -n "192.168.33.10"
jenkins.model.JenkinsLocationConfiguration.xml:3:  <jenkinsUrl>http://192.168.33.10:8080/</jenkinsUrl>
