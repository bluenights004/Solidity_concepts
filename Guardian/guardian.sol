// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.17;

/// To demonstrate how to update guardian address
/// Guardian pertains to whitelisted address allowed to access and execute certain functions.

contract Guardian {

	error InvalidGuardianConfirmation();
    error MustBeGuardian();
    event GuardianChanged(address oldGuardian, address newGuardian);

    // Guardian address
	address private guardian;
	address public newGuardian;

    constructor() {
		emit GuardianChanged(address(0), msg.sender);
		guardian = msg.sender;
	}

	// Initiate transfer of guardianship to a new address
	function setGuardian(address newAddress) external {
		// Check tx comes from current guardian
		if (msg.sender != guardian) {
			revert MustBeGuardian();
		}
		// Store new address awaiting confirmation
		newGuardian = newAddress;
	}

	// Get guardian address
	function getGuardian() external view returns (address) {
		return guardian;
	}

	// Completes transfer of guardianship
	function confirmGuardian() external {
		if (msg.sender != newGuardian) {
			revert InvalidGuardianConfirmation();
		}
		// Store old guardian for event
		address oldGuardian = guardian;
		// Update guardian and clear storage
		guardian = newGuardian;
		delete newGuardian;
		emit GuardianChanged(oldGuardian, guardian);
	}
}