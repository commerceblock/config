# Ocean mainnet/testnet configs


## Ocean node

### Method 1 - docker

0. Download and install docker and docker-compose following your system instructions, supported systems are: Linux, Windows, MacOS
1. Clone this repo
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

0. Download and install binaries from:
https://github.com/commerceblock/ocean/releases
1. Clone this repo
2. Start Ocean node
```bash
cd config/testnet/binaries
./ocean.sh
```


## Ocean node with Guardnode

### Method 1 - docker

0. Download and install docker and docker-compose following your system instructions, supported systems are: Linux, Windows, MacOS
1. Clone this repo
2. Move to Guardnode folder
```bash
cd config/testnet/docker/guardnode
```
3. Edit docker-compose file if desired
4. Start Ocean node alongside Guardnode
```bash
cd config/testnet/docker
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
