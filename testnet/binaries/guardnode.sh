#!/bin/sh

exec $HOME/guardnode/run_guardnode --bidpubkey $(echo $bid_pubkey) --bidtxid $(echo $bid_txid) --rpcuser ocean --rpcpassword oceanpass --nodelogfile ocean/ocean_main/debug.log --challengehost http://127.0.0.1:9999
