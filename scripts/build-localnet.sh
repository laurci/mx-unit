#!/bin/bash

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

cd "$parent_path/.."

mxpy localnet build

cp ./mx-chain-go/cmd/node/node ./localnet/validator00/
cp ./mx-chain-go/cmd/node/node ./localnet/validator01/
cp ./mx-chain-go/cmd/node/node ./localnet/validator02/

cp ./mx-chain-go/cmd/seednode/seednode ./localnet/seednode/

cp ./mx-chain-proxy-go/cmd/proxy/proxy ./localnet/proxy/
