
contract Intro {
    function intro() public pure returns (uint16) {
        uint256 mol = 420;

        assembly {
            // Store `mol` at the default free memory location.
            // free memory pointer at 0x40.
            let ptr := mload(0x40)
            // Solidity expects the returned data to start at 0x20 bytes into the allocated memory
            // because the first 0x20 bytes are used to define the length of the data.
            mstore(ptr, mol)
            // Return the data starting from `ptr + 0x20` with a length of 0x02 (2 bytes for uint16)
            return(add(ptr, 0x20), 0x02)
        }
    }
}




