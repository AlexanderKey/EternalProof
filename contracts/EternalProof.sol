pragma solidity ^0.4.18;
//pragma experimental ABIEncoderV2;

contract EternalProof{

    // add a struct to allow multiple images per address

    mapping (address => bytes32) public imagesAsBytes;
    bytes32[] public imageList;
    string[] public imageStrings;
    uint256[] public imagesAsNumbers;
    uint public testNumber;

    function writeImageAsBytes(bytes32 imageHash) public {
        //images[msg.sender] = imageHash;
        imageList.push(imageHash);
        imagesAsBytes[msg.sender] = imageHash;

    }

    function getImageAsBytes(address owner) view public returns (bytes32) {
        return imagesAsBytes[owner];
    }


    function writeStringImage(string imageHash) public {
        imageStrings.push(imageHash);

    }

    function writeNumber(uint256 imageAsNumber) public {
        imagesAsNumbers.push(imageAsNumber);
    }



/**
    function getImageByOwner(address owner) view public returns (bytes32) {
        return images[owner];
    }
    **/

    function getImagesAsNumbers() view public returns (uint256[]){
      return imagesAsNumbers;
    }

    function getTester() view public returns (uint) {
      return testNumber;
    }

    function writeTester(uint num) public {
        testNumber = num;
    }

    function getImages() view public returns (bytes32[]) {
        return imageList;
    }

    function getImageByOwner() view public returns (string){

    }

}
