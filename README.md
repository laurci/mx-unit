# mx-unit

This project contains the modified version of the [MultiversX](https://multiversx.com) chain used to integrate with [unit](https://github.com/laurci/unit).

The MultiversX chain is split in multiple repositories. Instead of creating a mono-repo with all the repos from MultiversX, we decided to keep the same convention.

# Projects

- [mx-plug](https://github.com/laurci/mx-plug.git): WASM vm plugins authoring framework
- [mx-chain-go](https://github.com/laurci/mx-chain-go.git): fork of the chain node
- [mx-chain-proxy-go](https://github.com/laurci/mx-chain-proxy-go.git): fork of the gateway/proxy
- [mx-chain-vm-go](https://github.com/laurci/mx-chain-vm-v1_4-go.git): fork of WASM vm modified to load and execute plugin
- [mx-sdk-rs](https://github.com/laurci/mx-sdk-rs.git): fork of the rust sc framework
- [mx-indexer](https://github.com/laurci/mx-indexer.git): opensearch setup, acts like the indexer
- [mx-seed-contracts](https://github.com/laurci/mx-seed-contracts.git): collection of contracts that need to be deployed on the network to make the wallet work
- [mx-api-service](https://github.com/laurci/mx-api-service.git): fork of the api service
- [mx-delegation-service](https://github.com/laurci/mx-delegation-service.git): fork of the delegation service
- [mx-socket-api-mock](https://github.com/laurci/mx-socket-api-mock.git): couldn't locate the source of the official socket service, so this is a mock
- [mx-unit-networking](https://github.com/laurci/mx-unit-networking.git): networking hacks used to make devnet-wallet, devnet-explorer and xPortal think our network is the real netowrk

# Setup

This multi-repo project is managed by [mani](https://github.com/alajmo/mani).

To get this working locally, follow these steps:

0. This works on linux. If you don't have linux, I can't provide you any support. Also make sure you have `mxpy`, `go`, `rust`, `node`, `git` and `mani` installed.
1. Clone this repo in your home directory. It expects to be located in `~/mx-unit`.
2. Run `mani sync` to pull the repos.
3. To setup your local network run `mxpy localnet setup`.
4. Change the `ChainID` in the validators configs (`config.toml` and `nodesSetup.json`) from `localnet` to `D`.
5. To start your local network run `mxpy localnet start`.
6. For all other packages check the individual setup guide.

## Terminal

I recommend you use `tmux` and `tmuxifier`. I've created a `tmuxifier` session layout for this project. To install it just run `./tmux/setup-tmuxifier.sh`.

# Port forwarding

If you use `ssh` to forward ports from this project, I'll save you the pain. Just append the following: `-L 3001:localhost:3001 -L 5601:localhost:5601 -L 9200:localhost:9200 -L 3005:localhost:3005 -L 3006:localhost:300`.
