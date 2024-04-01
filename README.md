# Bananapus Permission ID

This repository contains permission IDs to grant scoped permissions through the [`JBPermissions`](https://github.com/Bananapus/nana-core/blob/main/src/JBPermissions.sol) contract and [`JBPermissioned`](https://github.com/Bananapus/nana-core/blob/main/src/abstract/JBPermissioned.sol) modifier.

`JBPermissions` allows one address to grant another address permission to call functions in Juicebox contracts on their behalf. Each ID in `JBPermissionIds` grants access to a specific set of these functions.

For example, if `alice.eth` owns project ID #5, she can queue new rulesets for the project. If `alice.eth` gives `bob.eth` permission to `QUEUE_RULESETS`, `bob.eth` can also queue rulesets for project ID #5.

| Permission IDs | Repository                                                                  |
| -------------- | --------------------------------------------------------------------------- |
| 1              | `ROOT` (all Juicebox contracts)                                             |
| 2-19           | [`nana-core`](https://github.com/Bananapus/nana-core/)                      |
| 20             | [`nana-project-handles`](https://github.com/Bananapus/nana-project-handles) |
| 21-23          | [`nana-721-hook`](https://github.com/Bananapus/nana-721-hook)               |
| 24-25          | [`nana-buyback-hook`](https://github.com/Bananapus/nana-buyback-hook)       |
| 26-27          | [`nana-swap-terminal`](https://github.com/Bananapus/nana-swap-terminal)     |
| 28-29          | [`nana-suckers`](https://github.com/Bananapus/nana-suckers)                 |

_If you're having trouble understanding this contract, take a look at the [core protocol contracts](https://github.com/Bananapus/nana-core) and the [documentation](https://docs.juicebox.money/) first. If you have questions, reach out on [Discord](https://discord.com/invite/ErQYmth4dS)._

## Install

For projects using `npm` (recommended):

```bash
npm install @bananapus/permission-ids
```

For projects using `forge` (not recommended):

```bash
forge install Bananapus/nana-permission-ids
```

If you're using `forge` to manage dependencies, add `@bananapus/permission-ids/=lib/nana-permission-ids/` to `remappings.txt`. You'll also need to install `nana-permission-ids`' dependencies and add similar remappings for them.

## Develop

`nana-permission-ids` uses [npm](https://www.npmjs.com/) for package management and the [Foundry](https://github.com/foundry-rs/foundry) development toolchain for builds, tests, and deployments. To get set up, [install Node.js](https://nodejs.org/en/download) and install [Foundry](https://github.com/foundry-rs/foundry):

```bash
curl -L https://foundry.paradigm.xyz | sh
```

You can download and install dependencies with:

```bash
forge install
```

If you run into trouble with `forge install`, try using `git submodule update --init --recursive` to ensure that nested submodules have been properly initialized.

Some useful commands:

| Command               | Description                                         |
| --------------------- | --------------------------------------------------- |
| `forge build`         | Compile the contracts and write artifacts to `out`. |
| `forge fmt`           | Format solidity files.                              |
| `forge test`          | Run the tests.                                      |
| `forge build --sizes` | Get contract sizes.                                 |
| `forge coverage`      | Generate a test coverage report.                    |
| `foundryup`           | Update foundry. Run this periodically.              |
| `forge clean`         | Remove the build artifacts and cache directories.   |

To learn more, visit the [Foundry Book](https://book.getfoundry.sh/) docs.
