# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.ssh.insert_key = false
  config.vm.provider :virtualbox do |vb|
    vb.memory = 1024
    vb.cpus = 1
  end

  #logstash vagrant box
  config.vm.define "logstash" do |log|
    log.vm.box = "centos/7"
    log.vm.hostname = "logstash"
    log.vm.network :private_network, ip: "192.168.30.30"
    log.vm.provision "ansible" do |ansible|
      ansible.playbook = "install-install-playbooks/logstash.yml"
      ansible.sudo = true
    end
  end

  #Backup  logstash
  config.vm.define "logstash-backup" do |log|
    log.vm.box = "ubuntu/trusty64"
    log.vm.hostname = "logstash-backup"
    log.vm.network :private_network, ip: "192.168.30.33"
    log.vm.provision "ansible" do |ansible|
      ansible.playbook = "install-playbooks/logstash.yml"
      ansible.sudo = true
    end
  end

  #Redis broker vagrant box
  config.vm.define "redis" do |log|
    log.vm.box = "centos/7"
    log.vm.hostname = "redis-broker"
    log.vm.network :private_network, ip: "192.168.30.34"
    log.vm.provision "ansible" do |ansible|
      ansible.playbook = "install-playbooks/redis.yml"
      ansible.sudo = true
    end
  end

  #Redis Backup
  config.vm.define "redis-backup" do |log|
    log.vm.box = "centos/7"
    log.vm.hostname = "redis-backup"
    log.vm.network :private_network, ip: "192.168.30.35"
    log.vm.provision "ansible" do |ansible|
      ansible.playbook = "install-playbooks/redis.yml"
      ansible.sudo = true
    end
  end

  #Elasticsearch vagrant Box
  config.vm.define "elasticsearch" do |log|
    log.vm.box = "centos/7"
    log.vm.hostname = "elasticsearch"
    log.vm.network :private_network, ip: "192.168.30.31"
    log.vm.provision "ansible" do |ansible|
      ansible.playbook = "install-playbooks/elasticsearch.yml"
      ansible.sudo = true
    end
  end

  config.vm.define "elasticsearch-backup" do |log|
    log.vm.box = "ubuntu/trusty64"
    log.vm.hostname = "elasticsearch-backup"
    log.vm.network :private_network, ip: "192.168.30.38"
    log.vm.provision "ansible" do |ansible|
      ansible.playbook = "install-playbooks/elasticsearch.yml"
      ansible.sudo = true
    end
  end

  #Kibana vagrant box
  config.vm.define "kibana" do |log|
    log.vm.box = "centos/7"
    log.vm.hostname = "kibana"
    log.vm.network :private_network, ip: "192.168.30.32"
    log.vm.provision "ansible" do |ansible|
      ansible.playbook = "install-playbooks/kibana.yml"
      ansible.sudo = true
    end
  end


  #Kibana vagrant box
  config.vm.define "agent" do |log|
    log.vm.box = "centos/7"
    log.vm.hostname = "agent"
    log.vm.network :private_network, ip: "192.168.30.36"
    log.vm.provision "ansible" do |ansible|
      ansible.playbook = "install-playbooks/agent.yml"
      ansible.sudo = true
    end
  end


   #nginx vagrant box
   config.vm.define "nginx" do |log|
    log.vm.box = "centos/7"
    log.vm.hostname = "nginx"
    log.vm.network :private_network, ip: "192.168.30.37"
    log.vm.provision "ansible" do |ansible|
      ansible.playbook = "install-playbooks/nginx.yml"
      ansible.sudo = true
    end
  end


end
