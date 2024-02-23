// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

/// @notice Permission IDs for `JBPermissions`, used throughout the Bananapus ecosystem.
library JBPermissionIds {
    // nana-core
    uint256 internal constant ROOT = 1;
    uint256 internal constant QUEUE_RULESETS = 2;
    uint256 internal constant REDEEM_TOKENS = 3;
    uint256 internal constant MIGRATE_CONTROLLER = 4;
    uint256 internal constant MIGRATE_TERMINAL = 5;
    uint256 internal constant PROCESS_FEES = 6;
    uint256 internal constant SET_PROJECT_METADATA = 7;
    uint256 internal constant ISSUE_TOKEN = 8;
    uint256 internal constant SET_TOKEN = 9;
    uint256 internal constant MINT_TOKENS = 10;
    uint256 internal constant BURN_TOKENS = 11;
    uint256 internal constant CLAIM_TOKENS = 12;
    uint256 internal constant TRANSFER_TOKENS = 13;
    uint256 internal constant SET_CONTROLLER = 14;
    uint256 internal constant SET_TERMINALS = 15;
    uint256 internal constant SET_PRIMARY_TERMINAL = 16;
    uint256 internal constant USE_ALLOWANCE = 17;
    uint256 internal constant SET_SPLITS = 18;
    uint256 internal constant ADD_PRICE_FEED = 19;
    uint256 internal constant SET_ACCOUNTING_CONTEXT = 20;
    // nana-project-handles
    uint256 internal constant SET_ENS_NAME_FOR = 21;
    // nana-721-hook
    uint256 internal constant ADJUST_721_TIERS = 22;
    uint256 internal constant UPDATE_721_METADATA = 23;
    uint256 internal constant MINT_721 = 24;
    // nana-buyback-hook
    uint256 internal constant SET_BUYBACK_POOL_PARAMS = 25;
    uint256 internal constant CHANGE_BUYBACK_POOL = 26;
    // nana-swap-terminal
    uint256 internal constant MODIFY_DEFAULT_SWAP_TERMINAL_POOL = 27;
    uint256 internal constant MODIFY_SWAP_TERMINAL_TWAP_PARAMS = 28;
    // nana-suckers
    uint256 internal constant MAP_SUCKER_TOKEN = 29;
}
