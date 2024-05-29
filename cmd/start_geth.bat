@echo off

:start_geth
geth --gcmode=archive --http --http.corsdomain="*" --http.api=web3,eth,debug,personal,net,miner,admin --allow-insecure-unlock --http.addr "0.0.0.0" --http.port 8545 --authrpc.addr "0.0.0.0" --authrpc.port 30000 --port 33000 --authrpc.vhosts "0.0.0.0" --datadir "C:\Users\Santhosh P\Desktop\Geth" --http.vhosts "0.0.0.0" --dev
goto :EOF
