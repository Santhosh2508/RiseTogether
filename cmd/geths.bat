@echo off

:geths
geth --gcmode=archive --datadir "c:/geth-data" --dev --http --http.corsdomain="*" --http.api=web3,eth,debug,personal,net,miner,admin --allow-insecure-unlock --http.addr "0.0.0.0" --http.port 8545 --http.vhosts "*" --authrpc.addr "0.0.0.0" --authrpc.vhosts "*" --authrpc.port 30000 --port 33000
goto :EOF
