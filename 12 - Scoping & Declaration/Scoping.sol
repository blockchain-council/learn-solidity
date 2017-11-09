pragma solidity ^0.4.16;

contract ScopingErrors {
    function scoping() public {
        uint i = 0;

        while (i++ < 1) {
            uint same1 = 0;
        }

        while (i++ < 2) {
            uint same1 = 0;// Illegal, second declaration of same1
        }
    }

    function minimalScoping() public {
        {
            uint same2 = 0;
        }

        {
            uint same2 = 0;// Illegal, second declaration of same2
        }
    }

    function forLoopScoping() public {
        for (uint same3 = 0; same3 < 1; same3++) {
        }

        for (uint same3 = 0; same3 < 1; same3++) {// Illegal, second declaration of same3
        }
    }

    function foo() returns (uint) public {
        // baz is implicitly initialized as 0
        uint bar = 5;
        if (true) {
            bar += baz;
        } else {
            uint baz = 10;// never executes
        }
        return bar;// returns 5
    }
}
