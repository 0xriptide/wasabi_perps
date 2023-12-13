// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

interface IWasabiVault {
    error EthTransferFailed();
    error CannotDepositEth();
    error CallerNotPool();
    error InvalidEthAmount();

    /// @dev Returns the asset of the vault
    function getAsset() external view returns (address);

    /// @dev Records an interest payment
    function recordInterestEarned(uint256 _interestAmount) external;

    /// @dev Records any losses from liquidations
    function recordLoss(uint256 _amountLost) external;

    /// @dev The pool address that holds the assets
    function getPoolAddress() external view returns (address);
}