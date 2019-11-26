# Ocean mainnet/testnet configs

## Quickstart guide

### Method 1 - docker
0. Download and install docker and docker-compose following your system instructions, supported systems are: Linux, Windows, MacOS
1. Clone this repo
2. Start Ocean node
```bash
cd config/testnet/docker
docker-compose -p cbt up -d
```

### Method 2 - binaries

0. Download and install binaries from:
```https://github.com/commerceblock/ocean/releases```
1. Clone this repo
2. Start Ocean node
```bash
cd config/testnet/binaries
./ocean.sh
```
