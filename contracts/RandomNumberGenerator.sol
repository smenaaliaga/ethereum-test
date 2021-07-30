// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract RandomNumberGenerator {
    uint256 seed = 0;
    uint256 result = 0;
    // Initial Parameters, POSIX standar
    uint256 m = 2 ** 48;
    uint256 a = 25214903917;
    uint256 c = 11;
    
    function linearRandomGenerator() public {
      result = ( a * result + c ) % m;
    }
    
    function setSeed(uint256 newSeed) public {
      seed = newSeed;
      result = seed;
    }

    function setParameters(uint256 newM, uint256 newA, uint256 newC) public {
      m = newM;
      a = newA;
      c = newC;
    }
    
    function getSeed() public view returns (uint256) {
        return seed;
    }
    
    function getResult() public view returns (uint256) {
        return result;
    }

    function getParameters() public view returns (uint256, uint256, uint256) {
      return (m, a, c);
    }
}
