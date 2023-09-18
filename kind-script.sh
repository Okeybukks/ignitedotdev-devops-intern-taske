# Installing Perequsite applications for kind

# Updating apt repository
apt-get update

# Installing Kubectl for maximum experience of the k8s cluster to be created
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

# Installing kind
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64
chmod +x ./kind
mv ./kind /usr/local/bin/kind

kind version

# Pulling kindest/node image for the cluster creation.
# Reason for pulling image first, you might encountere a `ERROR: failed to create cluster: failed to pull image`
# error, to mitigate this error, pull the image then run the cluster creation command.

# Creating a k8s CLuster. The default name of the cluster is kind
kind create cluster



