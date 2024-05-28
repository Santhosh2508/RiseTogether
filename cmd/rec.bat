@echo off
REM Check if the correct number of arguments is provided
if "%~2"=="" (
    echo Usage: %0 ^<wallet_address^> ^<ether_value^>
    exit /b 1
)

REM Assign arguments to variables
set WALLET_ADDRESS=%1
set ETHER_VALUE=%2

REM Run Geth console command to send ether
geth --exec "eth.sendTransaction({from: eth.coinbase, to: '%WALLET_ADDRESS%', value: web3.toWei(%ETHER_VALUE%,'ether')})" attach
