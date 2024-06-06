# Bananapus Permission ID

This repository contains permission IDs to grant scoped permissions through the [`JBPermissions`](https://github.com/Bananapus/nana-core/blob/main/src/JBPermissions.sol) contract and the [`JBPermissioned`](https://github.com/Bananapus/nana-core/blob/main/src/abstract/JBPermissioned.sol) modifier.

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#usage">Usage</a></li>
  <ul>
    <li><a href="#install">Install</a></li>
    <li><a href="#develop">Develop</a></li>
    </ul>
    <li><a href="#repository-layout">Repository Layout</a></li>
    <li><a href="#description">Description</a></li>
  </ul>
  </ol>
</details>

## Usage

### Install

How to install `nana-permission-ids` in another project.

For projects using `npm` to manage dependencies (recommended):

```bash
npm install @bananapus/permission-ids
```

For projects using `forge` to manage dependencies (not recommended):

```bash
forge install Bananapus/nana-permission-ids
```

If you're using `forge` to manage dependencies, add `@bananapus/permission-ids/=lib/nana-permission-ids/` to `remappings.txt`. You'll also need to install `nana-permission-ids`' dependencies and add similar remappings for them.

### Develop

`nana-permission-ids` uses [npm](https://www.npmjs.com/) (version >=20.0.0) for package management and the [Foundry](https://github.com/foundry-rs/foundry) development toolchain for builds, tests, and deployments. To get set up, [install Node.js](https://nodejs.org/en/download) and install [Foundry](https://github.com/foundry-rs/foundry):

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

## Repository Layout

The root directory contains this README, an MIT license, and config files. If you're developing, you're probably looking for one of these:

```
nana-permission-ids/
├── .github/
│   └── workflows/ - CI/CD workflows.
└── src/
    └── JBPermissionIds.sol
```

## Description

`JBPermissions` allows one address to grant another address permission to call functions in Juicebox contracts on their behalf. Each ID in `JBPermissionIds` grants access to a specific set of these functions.

For example, if `alice.eth` owns project ID #5, she can queue new rulesets for the project. If `alice.eth` gives `bob.eth` permission to `QUEUE_RULESETS`, `bob.eth` can also queue rulesets for project ID #5.

| Permission IDs | Repository                                                                  |
| -------------- | --------------------------------------------------------------------------- |
| 1              | `ROOT` (all Juicebox contracts)                                             |
| 2-19           | [`nana-core`](https://github.com/Bananapus/nana-core/)                      |
| 20-22          | [`nana-721-hook`](https://github.com/Bananapus/nana-721-hook)               |
| 23-24          | [`nana-buyback-hook`](https://github.com/Bananapus/nana-buyback-hook)       |
| 25-26          | [`nana-swap-terminal`](https://github.com/Bananapus/nana-swap-terminal)     |
| 27-28          | [`nana-suckers`](https://github.com/Bananapus/nana-suckers)                 |

_If you're having trouble understanding this contract, take a look at the [core protocol contracts](https://github.com/Bananapus/nana-core) and the [documentation](https://docs.juicebox.money/) first. If you have questions, reach out on [Discord](https://discord.com/invite/ErQYmth4dS)._

