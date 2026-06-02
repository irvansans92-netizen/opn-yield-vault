// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract YieldVault {
    uint256 public totalShares;
    uint256 public totalAssets;
    mapping(address => uint256) public shares;

    event Deposited(address indexed user, uint256 assets, uint256 shares);
    event Withdrawn(address indexed user, uint256 assets, uint256 shares);
    event YieldAdded(uint256 amount);

    function deposit() external payable {
        require(msg.value > 0, "Zero deposit");
        uint256 mintedShares = (totalShares == 0 || totalAssets == 0) ? msg.value : (msg.value * totalShares) / totalAssets;
        shares[msg.sender] += mintedShares;
        totalShares += mintedShares;
        totalAssets += msg.value;
        emit Deposited(msg.sender, msg.value, mintedShares);
    }

    function withdraw(uint256 _shares) external {
        require(_shares > 0 && shares[msg.sender] >= _shares, "Invalid shares");
        uint256 amount = (_shares * totalAssets) / totalShares;
        shares[msg.sender] -= _shares;
        totalShares -= _shares;
        totalAssets -= amount;
        payable(msg.sender).transfer(amount);
        emit Withdrawn(msg.sender, amount, _shares);
    }

    function addYield(uint256 amount) external {
        totalAssets += amount;
        emit YieldAdded(amount);
    }
}
