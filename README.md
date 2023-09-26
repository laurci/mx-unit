# mx-unit

This project contains the modified version of the [MultiversX](https://multiversx.com) chain used to integrate with [unit](https://github.com/laurci/unit).

The MultiversX chain is split in multiple repositories. Instead of creating a mono-repo with all the repos from MultiversX, we decided to keep the same convention.

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
