// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract DataType2 {
    struct User {
        string name;
        uint256 age;
    }

    mapping(address => uint256) private balances;
    mapping(address => User) private users;

    string private message = "Hello, Solidity!";
    uint256[] private numbers;
    string[] private names;
    bytes private dynamicData;
    bytes32 private fixedData =
        0xabcdef1234560000000000000000000000000000000000000000000000000000;

    function getMessage() public view returns (string memory) {
        return message;
    }

    function setMessage(string memory _message) public {
        message = _message;
    }

    function getNumbers() public view returns (uint256[] memory) {
        return numbers;
    }

    function addNumber(uint256 _num) public {
        numbers.push(_num);
    }

    function getNumber(uint256 _index) public view returns (uint256) {
        return numbers[_index];
    }

    function getNames() public view returns (string[] memory) {
        return names;
    }

    function addName(string memory _name) public {
        names.push(_name);
    }

    function setBalance(address _user, uint256 _amount) public {
        balances[_user] = _amount;
    }

    function getBalance(address _user) public view returns (uint256) {
        return balances[_user];
    }

    function setUser(address _user, string memory _name, uint256 _age) public {
        users[_user] = User(_name, _age);
    }

    function getUser(
        address _user
    ) public view returns (string memory, uint256) {
        return (users[_user].name, users[_user].age);
    }

    function setDynamicData(bytes memory _data) public {
        dynamicData = _data;
    }

    function getDynamicData() public view returns (bytes memory) {
        return dynamicData;
    }

    function setFixedData(bytes32 _data) public {
        fixedData = _data;
    }

    function getFixedData() public view returns (bytes32) {
        return fixedData;
    }

    function getDetails()
        public
        view
        returns (
            string memory,
            uint256[] memory,
            string[] memory,
            bytes32,
            bytes memory
        )
    {
        return (message, numbers, names, fixedData, dynamicData);
    }
}
