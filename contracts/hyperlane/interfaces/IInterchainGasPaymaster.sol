pragma solidity >=0.6.11;

/**
 * @title IInterchainGasPaymaster
 * @notice Manages payments on a source chain to cover gas costs of relaying
 * messages to destination chains.
 */
interface IInterchainGasPaymaster {
  function payForGas(
    bytes32 _messageId,
    uint32 _destinationDomain,
    uint256 _gasAmount,
    address _refundAddress
  ) external payable;

  function quoteGasPayment(
    uint32 _destinationDomain,
    uint256 _gasAmount
  ) external view returns (uint256);
}
