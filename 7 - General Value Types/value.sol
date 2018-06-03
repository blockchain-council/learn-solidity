pragma solidity ^0.4.16;

contract aa {

  uint x;
  uint x = 1;

  int a;
  int a = 4567;
  int constant a = 86;

  int256 a;
  uint128 b;

  int x = int(b);
  bool status;
  bool constant status = true;

  var a;
  a = true;

  var b;
  b = 1;

  address public owner;

  byte a;
  bytes2 b;
  bytes 20 c;
  bytes32 largeNum;

  bytes m;// byte[] m;

  string s = "david";

  bytes32[5] nickname;

  bytes32[] nicknames2;

  uint newlength = nicknames2.push("sharma");

  mapping (string => uint) public balance;

  balance["tosh"] = 56;

  enum State { Created, Locked, Inactive };
  State public state
  state = State.Created;

  uint statevalue = uint(state); // 'created' would be 0, 'locked' would be 1, etc.

  struct person{
    uint height;
    uint age;
    address add;
  }

  person public a;
  


  function aa() {

  }
}
