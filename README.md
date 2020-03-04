# Ocean mainnet/testnet configs


## Ocean node without guardnode

### Method 1 - docker

0. Download and install [docker](https://docs.docker.com/install/) and [docker-compose](https://docs.docker.com/compose/install/) following your system instructions, supported systems are: Linux, Windows, MacOS
1. Clone this repo
```bash
git clone https://github.com/commerceblock/config
```
2. Start Ocean node
```bash
cd config/testnet/docker
docker-compose -p cbt up -d
```

Follow logs
```bash
docker logs -f cbt_ocean_1
```

Interact
```bash
docker exec cbt_ocean_1 ocean-cli -rpcport=8332 -rpcuser=ocean -rpcpassword=oceanpass help
```

### Method 2 - binaries
0. Download and install [Ocean binaries](https://github.com/commerceblock/ocean/releases)
1. Clone this repo
2. Start Ocean node
```bash
cd config/testnet/binaries
./ocean.sh
```
### Method 3 - AWS

0. Click any of the pre-set buttons to launch Ocean node in AWS.

| AWS Region | Short name | |
| -- | -- | -- |
| US East (Ohio) | us-east-2 | [![cloudformation-launch-button](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-east-2#/stacks/new?stackName=Ocean&templateURL=https://s3.eu-west-2.amazonaws.com/cb-awsocs/ocean-network.template.yaml) |
| US East (N. Virginia) | us-east-1 | [![cloudformation-launch-button](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=Ocean&templateURL=https://s3.eu-west-2.amazonaws.com/cb-awsocs/ocean-network.template.yaml) |
| US West (Oregon) | us-west-1 | [![cloudformation-launch-button](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-west-1#/stacks/new?stackName=Ocean&templateURL=https://s3.eu-west-2.amazonaws.com/cb-awsocs/ocean-network.template.yaml) |
| EU (London) | eu-west-2 | [![cloudformation-launch-button](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=eu-west-2#/stacks/new?stackName=Ocean&templateURL=https://s3.eu-west-2.amazonaws.com/cb-awsocs/ocean-network.template.yaml) |
| EU (Ireland) | eu-west-1 | [![cloudformation-launch-button](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=eu-west-1#/stacks/new?stackName=Ocean&templateURL=https://s3.eu-west-2.amazonaws.com/cb-awsocs/ocean-network.template.yaml) |


Or enter the following URL to CloudFormation new stack launch in your preferred region: https://s3.eu-west-2.amazonaws.com/cb-awsocs/ocean-network.template.yaml

### Method 4 - Docker on Raspberry Pis or other arm64

0. Download and install Docker for arm64. If running Ubuntu [image](https://ubuntu.com/download/raspberry-pi), do
```bash
sudo apt install -y \
    docker.io \
    libffi-dev libssl-dev \
    python3 python3-pip \
&& sudo python3 -m pip install docker-compose
```
1. Clone this repo
```bash
git clone https://github.com/commerceblock/config
```
2. Start Ocean node
```bash
cd config/testnet/docker
sed -i 's/24e5a20d4/arm64/g' docker-compose.yml
docker-compose -p cbt up -d
```

Follow logs
```bash
docker logs -f cbt_ocean_1
```


## Ocean node with Guardnode

### Method 1 - docker

0. Download and install [docker](https://docs.docker.com/install/) and [docker-compose](https://docs.docker.com/compose/install/) following your system instructions, supported systems are: Linux, Windows, MacOS
1. Clone this repo
2. Move to Guardnode folder
```bash
cd config/testnet/docker/guardnode
```
3. Edit docker-compose file if desired
4. Start Ocean node alongside Guardnode
```bash
docker-compose up -d
```

Follow guardnode logs
```bash
docker logs -f guardnode_guardnode_1
```

Follow Ocean logs
```bash
docker logs -f guardnode_ocean_1
```

Interact with ocean node
```bash
docker exec guardnode_ocean_1 ocean-cli -rpcport=8332 -rpcuser=ocean -rpcpassword=oceanpass help
```

### Method 2 - binaries

0. Download and install binaries for [Ocean](https://github.com/commerceblock/ocean/releases) and [Guardnode](https://github.com/commerceblock/guardnode/releases).

1. Clone this repo
2. Start Ocean node
```bash
cd config/testnet/binaries
./ocean.sh
```
3. Start Guardnode
```bash
./guardnode.sh
```
