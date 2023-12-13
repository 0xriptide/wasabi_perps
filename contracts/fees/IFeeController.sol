// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IFeeController {
    /// @dev returns the fee receiver
    /// @return feeReceiver the fee receiver
    function getFeeReceiver() external view returns (address feeReceiver);

    /// @dev Computes the fee amount
    /// @param amount the amount to compute the fee for
    /// @return feeAmount the fee amount
    function computeTradeFee(uint256 amount) external view returns (uint256 feeAmount);
}