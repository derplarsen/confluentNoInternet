
This is a repo to help install Confluent Platform on a RedHat server which doesn't have connection to the internet. It installs all packages and assumes that you want all of the components on one box. If you want are installing individual components on individual VMs, single out the particular RPM you want on that node and edit the properties file(s) as appropriate.

It also assumed that the target machine is RHEL and it does not need yum.

The only pre-requisite is that you have *java 1.8* installed already. If you don't, you'll have to get the appropriate RPM from https://java.com/en/download/manual.jsp and download it to your jump box, copy it to the machine and run `rpm -ivh jre-<version>.rpm`

# On your internet connected \*nix machine (macOS, linux)

Clone this repo

```git clone https://github.com/derplarsen/confluentNoInternet.git```

Enter the directory that's been cloned:

```cd confluentNoInternet/```

Make the shell scripts executable:

```chmod +x *.sh```

Run the first script:

```./runOnInternetClient.sh```

# On your non-internet connected server instance

*(Again, this requires Java 1.8 to be installed and that it is a RHEL / centos server.)*

Copy the confluent-packages.tar.gz file from the previous set of steps over to the target server

Run the following from in the directory you copied the file to:

`tar zxvf confluent-packages.tar.gz`

You will see that a "packages" directory was created and inside are all of the rpms. Also, a script called "runOnTargetServer.sh" now exists in the current directory. Run that -

`./runOnTargetServer.sh`

This will install all of the rpms from inside the packages folder.

After the packages are installed, follow the the steps starting at the zookeeper section:

https://docs.confluent.io/current/installation/installing_cp/rhel-centos.html#systemd-rhel-centos-install

# Zookeeper Configuration / Starting

Since this is a single node, you don't need to make any changes to zookeeper configuration properties file

`systemctl enable confluent-zookeeper`
`systemctl start confluent-zookeeper`
`systemctl status confluent-zookeeper`

# Kafka Configuration / Starting

First, get the hostname of the server. If it's something that is not resolvable, create a hosts file entry or an entry in DNS and ensure it is reachable from a client and itself. 

Then open /etc/kafka/server.properties and down a little bit will be the "advertised.listeners" property. Uncomment that and change the "your.host.name" fqdn to what you created in your /etc/hosts file for the reachable IP address of the broker/server.

Uncomment the following lines:

`metric.reporters=io.confluent.metrics.reporter.ConfluentMetricsReporter`

`confluent.metrics.reporter.bootstrap.servers=localhost:9092`

`confluent.metrics.reporter.topic.replicas=1`


Then run the following to enable, start and check on the kafka broker service:

`sudo systemctl enable confluent-server`

`sudo systemctl start confluent-server`

`sudo systemctl status confluent-server`
