# confluentNoInternet
This is a repo to help install Confluent Platform on a RedHat server which doesn't have connection to the internet.

It also assumed that the target machine is RHEL and it does not need yum.

The only pre-requisite is that you have *java 1.8* installed already. If you don't, you'll have to get the appropriate RPM from https://java.com/en/download/manual.jsp and download it to your jump box, copy it to the machine and run `rpm -ivh jre-<version>.rpm`

# On your internet connected \*nix server

Clone this repo
```git clone https://github.com/derplarsen/confluentNoInternet.git```

Enter the directory that's been cloned:

```cd confluentNoInternet/```

Make the shell scripts executable:
```chmod +x *.sh```

Run the first script:

```./runOnInternetClient.sh```
