# voting-ballot
Voting Ballot

Learn how to make a smart contract "voting ballot" using Solidity. Find the entire course [here](https://www.toshacademy.com/courses/take/best-solidity-programing-language-tutorial-for-ethereum-smart-contracts/lessons/1105966-full-example-voting-ballot-smart-contract) by Toshendra Sharma 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

* [node](https://nodejs.org/en/download/)

Node.js is a JavaScript runtime built on Chrome's V8 JavaScript engine. Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient. The Node.js package ecosystem, npm, is the largest ecosystem of open source libraries in the world.


* [npm](https://www.npmjs.com/package/npm)

npm makes it easy for JavaScript developers to share and reuse code, and it makes it easy to update the code that you're sharing.npm is a way to reuse code from other developers, and also a way to share your code with them, and it makes it easy to manage the different versions of code.


* [truffle](https://www.npmjs.com/package/truffle/tutorial)

Truffle is a development environment, testing framework and asset pipeline for Ethereum, aiming to make life as an Ethereum developer easier. With Truffle, you get:
>Built-in smart contract compilation, linking, deployment and binary management.
>Automated contract testing with Mocha and Chai.
>Configurable build pipeline with support for custom build processes.
>Scriptable deployment & migrations framework.
>Network management for deploying to many public & private networks.
>Interactive console for direct contract communication.
>Instant rebuilding of assets during development.
>External script runner that executes scripts within a Truffle environment.


* Rpc client preferrably [testrpc](https://www.npmjs.com/package/ethereumjs-testrpc/tutorial)

### Setting up the environment

* Installing Node.js [node](https://nodejs.org/en/download/)

If you're using OS X or Windows, the best way to install Node.js is to use one of the installers from the Node.js download page.If you're     using Linux, you can use the installer, or you can check NodeSource's binary distributions to see whether or not there's a more recent version that works with your system.

```
$ sudo apt-get install nodejs 
```
Test: Run node -v. To check the version the of installed nodejs.

* Install [npm](https://www.npmjs.com/package/npm)

Node comes with npm installed so you should have a version of npm. However, npm gets updated more frequently than Node does, so you'll want to make sure it's the latest version.

```
$ npm install npm@latest -g
```
Test: Run npm -v. To check the version the of installed npm.


## Getting started(Quick Usage)

* Clone the repository on your local machine.
```
$ git clone https://github.com/blockchain-council/coin-development.git
```
* "cd" into the cloned repository from command line.
```
$ cd clone-development
```
* Then run the below command which lets the dependencies from package.json gets installed locally for this particular project. The major requirements are truffle, testrpc, babel-register and babel-polyfill.
```
$ npm install
```

Then run the below command to start compling the contract:

```
$ truffle compile
```

You can also run truffle migrate and truffle test to compile your contracts, deploy those contracts to the network, and run their associated unit tests.

Be sure you're connected to an ethereum client before running these commands. If you're new, install testrpc to run a local blockchain RPC server. After that, simply run testrpc in a new tab.

## Authors

* [**Toshendra Sharma**](https://www.udemy.com/user/toshendrasharma2/)  - Founder & CEO @ RecordsKeeper, Toshacademy, Toshblocks
