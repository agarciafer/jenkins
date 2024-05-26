# -*- mode: ruby -*-
# vi: set ft=ruby :
##Las mv de vagrant el usuario es:
#vagrant
#vagrant
#root
#vagrant
Vagrant.configure("2") do |config|

  config.vm.box = "bento/centos-7.6"
  #Salvar error de descarga con certificado ssl
   #config.vm.box_download_insecure = true
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "playbook_centos_install_docker.yaml"
	#config.vm.synced_folder "jenkins/jenkins_home/ansible", "/vagrant/jenkins/jenkins_home/ansible", 
  #owner: "vagrant",
  #group: "vagrant",
  #mount_options: ["dmode=775,fmode=600"]
  #config.vm.synced_folder "jenkins/jenkins_home/.ssh/", "/vagrant/jenkins/jenkins_home/.ssh", 
  #owner: "vagrant",
  #group: "vagrant",
  #mount_options: ["dmode=755,fmode=644"]
  
	 config.vm.provider "virtualbox" do |vb|
     vb.gui = false
     vb.memory = "4096"


 end

  # docker1
    config.vm.define "jenkins1" do |app|
	config.vm.boot_timeout = 1200
	#Salvar error de descarga con certificado ssl
   #config.vm.box_download_insecure = true
	config.ssh.insert_key = false
    app.vm.hostname = "jenkins1"
    app.vm.network "private_network", ip: "192.168.30.10"
	app.vm.network "forwarded_port", guest: 8080, host: 80


    #app.vm.provision "shell", path: "provision/provision-for-balancer.sh"
	end

  # docker2
    config.vm.define "jenkins2" do |app|
	config.vm.boot_timeout = 1200
	#Salvar error de descarga con certificado ssl
   #config.vm.box_download_insecure = true
	config.ssh.insert_key = false
    app.vm.hostname = "jenkins2"
    app.vm.network "private_network", ip: "192.168.30.11"
	#app.vm.provision "shell", path: "provision/provision-for-nginx.sh"
  end

end
end
