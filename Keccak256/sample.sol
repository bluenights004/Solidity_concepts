pragma solidity ^0.5.0;

contract UniqueIdentifier {
    // Map from unique IDs to data values
    mapping(bytes32 => string) public data;

    function addData(bytes memory _value) public {
        // Compute the Keccak-256 hash of _value
        bytes32 id = keccak256(_value);

        // Print the computed ID to the console
        emit LogID(id);

        // Store the value in the data mapping using the computed ID as the key
        data[id] = _value;
    }

    function getID(bytes memory _value) public view returns (bytes32) {
        // Compute the Keccak-256 hash of _value
        return keccak256(_value);
    }

    event LogID(bytes32 indexed id);

}