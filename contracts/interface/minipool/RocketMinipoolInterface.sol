pragma solidity 0.6.10;

// SPDX-License-Identifier: GPL-3.0-only

import "../../types/MinipoolDeposit.sol";
import "../../types/MinipoolStatus.sol";

interface RocketMinipoolInterface {
    function getStatus() external view returns (MinipoolStatus);
    function getStatusBlock() external view returns (uint256);
    function getStatusTime() external view returns (uint256);
    function getDepositType() external view returns (MinipoolDeposit);
    function getNodeAddress() external view returns (address);
    function getNodeFee() external view returns (uint256);
    function getNodeDepositBalance() external view returns (uint256);
    function getNodeRefundBalance() external view returns (uint256);
    function getNodeDepositAssigned() external view returns (bool);
    function getUserDepositBalance() external view returns (uint256);
    function getUserDepositAssigned() external view returns (bool);
    function getUserDepositAssignedTime() external view returns (uint256);
    function getStakingStartBalance() external view returns (uint256);
    function getStakingEndBalance() external view returns (uint256);
    function getStakingStartEpoch() external view returns (uint256);
    function getStakingEndEpoch() external view returns (uint256);
    function getStakingUserStartEpoch() external view returns (uint256);
    function nodeDeposit() external payable;
    function userDeposit() external payable;
    function refund() external;
    function stake(bytes calldata _validatorPubkey, bytes calldata _validatorSignature, bytes32 _depositDataRoot) external;
    function setWithdrawable(uint256 _withdrawalBalance, uint256 _startEpoch, uint256 _endEpoch, uint256 _userStartEpoch) external;
    function withdraw() external;
    function dissolve() external;
    function close() external;
}
