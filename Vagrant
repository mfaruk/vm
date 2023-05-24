# Practice linux basic commands
# Practice shell scripting
# open the browser with http://192.168.160.10
Vagrant.configure("2") do |config|
  
  config.ssh.insert_key = true
  config.vm.box_download_insecure=true

  config.vm.define "master" do |master|
   master.vm.box = "hashicorp/bionic64"
   master.vm.network "private_network", ip: "192.168.160.10"			                    
   master.vm.hostname = "master"
   
    master.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"
      vb.cpus = "2"
      #vb.gui =true
   end
  end  
   config.vm.provision "shell", inline: <<-SHELL
     apt update
     apt install -y apache2
   SHELL
end
