#!/bin/bash
ENVPATH=/root/.bash_profile
CONFIGPATH=config.hcl
USERNAME="$1"

# Check if the script is being run with superuser privileges
if [[ $(id -u) != 0 ]]; then
  echo "Exiting. Use sudo, this script needs to be run with superuser privileges."
  exit 1
fi

if [[ "$USERNAME" = "" ]]
  then
    echo "Exiting. 1st argument must be github username."
    exit 1
fi

#1 - Set an environment variable with your github username in $ENVPATH
echo "GITHUBUSER=$USERNAME" >> $ENVPATH

#2 - Write the following code to a file $CONFIGPATH
#cluster_addr  = "https://<HOSTNAME>:8201"
#api_addr      = "https://<HOSTNAME>:8200"
#disable_mlock = true
cat >$CONFIGPATH <<EOL
cluster_addr  = "https://<HOSTNAME>:8201"
api_addr      = "https://<HOSTNAME>:8200"
disable_mlock = true
EOL

# Replace <HOSTNAME> value vault-server.hashicorp.com in $CONFIGPATH
sed -i 's/<HOSTNAME>/vault-server.hashicorp.com/g' $CONFIGPATH