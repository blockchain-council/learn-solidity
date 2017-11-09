pragma solidity ^0.4.16;

contract ControlStructure {
    /*
    * @title A Simple Subcurrency Example
    * @author Toshendra Sharma
    * @notice Example for the Solidity Course
    * @dev This is only for demo the simple Coin example
    * 
    */
    address public a;

    function ControlStructure(uint input1) {
        
        // if-else
        if(input1 == 2)
            a = 1;
        else
            a = 0;

        while(input1 >= 0){
            if(input1 == 5)
                continue;
            input1 = input1 - 1;   
            a++;

        } 
        
        for(uint i=0; i<=50; i++)
        {
            a++;
            if(a == 4) break;
        }  

        do{
            a--;
        } (while a>0);

        bool isTrue = (a == 1)? true: false;

        
        // will show an error because 
        //there is no type conversion from non-boolean to boolean   
        if (1) { 
            //some work
        }



    }

}
