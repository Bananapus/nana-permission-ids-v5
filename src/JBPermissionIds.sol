// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Permission IDs for `JBPermissions`, used throughout the Bananapus ecosystem. See
/// https://github.com/Bananapus/nana-core/blob/main/src/JBPermissions.sol
/// @dev `JBPermissions` allows one address to grant another address permission to call functions in Juicebox contracts
/// on their behalf. Each ID in `JBPermissionIds` grants access to a specific set of these functions.
library JBPermissionIds {
    uint256 internal constant ROOT = 1; // All permissions across every contract. Very dangerous. BE CAREFUL!

    /* Used by `nana-core`: https://github.com/Bananapus/nana-core */
    uint256 internal constant QUEUE_RULESETS = 2; // Permission to call `JBController.queueRulesetsOf` and
        // `JBController.launchRulesetsFor`.
    uint256 internal constant REDEEM_TOKENS = 3; // Permission to call `JBMultiTerminal.redeemTokensOf`.
    uint256 internal constant MIGRATE_CONTROLLER = 4; // Permission to call `JBController.migrateController`.
    uint256 internal constant MIGRATE_TERMINAL = 5; // Permission to call `JBMultiTerminal.migrateBalanceOf`.
    uint256 internal constant SET_PROJECT_METADATA = 6; // Permission to call `JBController.setUriOf`.
    uint256 internal constant DEPLOY_ERC20 = 7; // Permission to call `JBController.deployERC20For`.
    uint256 internal constant SET_TOKEN = 8; // Permission to call `JBController.setTokenFor`.
    uint256 internal constant MINT_TOKENS = 9; // Permission to call `JBController.mintTokensOf`.
    uint256 internal constant BURN_TOKENS = 10; // Permission to call `JBController.burnTokensOf`.
    uint256 internal constant CLAIM_TOKENS = 11; // Permission to call `JBController.claimTokensFor`.
    uint256 internal constant TRANSFER_CREDITS = 12; // Permission to call `JBController.transferCreditsFrom`.
    uint256 internal constant SET_CONTROLLER = 13; // Permission to call `JBDirectory.setControllerOf`.
    uint256 internal constant SET_TERMINALS = 14; // Permission to call `JBDirectory.setTerminalsOf`.
    uint256 internal constant SET_PRIMARY_TERMINAL = 15; // Permission to call `JBDirectory.setPrimaryTerminalOf`.
    uint256 internal constant USE_ALLOWANCE = 16; // Permission to call `JBMultiTerminal.useAllowanceOf`.
    uint256 internal constant SET_SPLIT_GROUPS = 17; // Permission to call `JBController.setSplitGroupsOf`.
    uint256 internal constant ADD_PRICE_FEED = 18; // Permission to call `JBPrices.addPriceFeedFor`.
    uint256 internal constant ADD_ACCOUNTING_CONTEXTS = 19; // Permission to call
        // `JBMultiTerminal.addAccountingContextsFor`.

    /* Used by `nana-project-handles`: https://github.com/Bananapus/nana-project-handles */
    uint256 internal constant SET_ENS_NAME = 20; // Permission to call `JBProjectHandles.setEnsNamePartsFor`.

    /* Used by `nana-721-hook`: https://github.com/Bananapus/nana-721-hook */
    uint256 internal constant ADJUST_721_TIERS = 21; // Permission to call `JB721TiersHook.adjustTiers`.
    uint256 internal constant SET_721_METADATA = 22; // Permission to call `JB721TiersHook.setMetadata`.
    uint256 internal constant MINT_721 = 23; // Permission to call `JB721TiersHook.mintFor`.

    /* Used by `nana-buyback-hook`: https://github.com/Bananapus/nana-buyback-hook */
    uint256 internal constant SET_BUYBACK_TWAP = 24; // Permission to call `JBBuybackHook.setTwapWindowOf` and
        // `JBBuybackHook.setTwapSlippageToleranceOf`.
    uint256 internal constant SET_BUYBACK_POOL = 25; // Permission to call `JBBuybackHook.setPoolFor`.

    /* Used by `nana-swap-terminal`: https://github.com/Bananapus/nana-swap-terminal */
    uint256 internal constant ADD_SWAP_TERMINAL_POOL = 26; // Permission to call `JBSwapTerminal.addDefaultPool`.
    uint256 internal constant ADD_SWAP_TERMINAL_TWAP_PARAMS = 27; // Permission to call
        // `JBSwapTerminal.addTwapParamsFor`.

    /* Used by `nana-suckers`: https://github.com/Bananapus/nana-suckers */
    uint256 internal constant MAP_SUCKER_TOKEN = 28; // Permission to call `BPSucker.mapToken`.
    uint256 internal constant DEPLOY_SUCKERS = 29; // Permission to call `BPSuckerRegistry.deploySuckersFor`.
}
