#!/bin/sh

exec $HOME/guardnode/run_guardnode --rpcuser ocean --rpcpass oceanpass --rpchost 127.0.0.1:8332 --servicerpcuser ocean --servicerpcpass oceanpass --servicerpchost 127.0.0.1:8332 --nodelogfile ocean/ocean_main/debug.log --challengehost https://coordinator.testnet.commerceblock.com:10005 --bidlimit 50
