Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64" #Para usar Ubuntu 18 (version estable y que consume pocos recursos)
  config.vm.hostname = "vm-partidos-tenis"
  #config.vm.network "private_network", type: "dhcp" 
  ##Esta linea está comentada debido a al trabajar con otras MV, una de ellas ya tiene el servidor DHCP activo
  
  #Carpeta compartida
  config.vm.synced_folder ".", "/vagrant"

  #Instalación general y ejecución del playbook
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y software-properties-common tzdata
    ln -fs /usr/share/zoneinfo/America/Mexico_City /etc/localtime
    dpkg-reconfigure -f noninteractive tzdata
    apt-get install -y ansible python3-pip curl
    pip3 install requests
    ansible-playbook /vagrant/playbook.yml
  SHELL
end


