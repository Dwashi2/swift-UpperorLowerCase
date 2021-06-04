//
//  ViewController.swift
//  UpperorLowerCase
//
//  Created by Daniel Washington Ignacio on 04/06/21.
//


/*
 Return the smallest number of steps it takes to convert a string entirely into uppercase or entirely into lower case, whichever takes the fewest number of steps. A step consists of changing one character from lower to upper case, or vice versa.

 Examples

 stepsToConvert("abC") ➞ 1
 // "abC" converted to "abc" in 1 step

 stepsToConvert("abCBA") ➞ 2
 // "abCBA" converted to "ABCBA" in 2 steps

 stepsToConvert("aba") ➞ 0

 stepsToConvert("abaCCC") ➞ 3
 Notes

 Return 0 if empty string.
 Return 0 if the string is already entirely in one case.
 Only alphabetic characters.
 Input has no spaces.
 */


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(self.stepsToConvert("abC"))
        print(self.stepsToConvert("abCBA"))
        print(self.stepsToConvert("aba"))
        print(self.stepsToConvert("abaCCC"))
        
    }
    
    func stepsToConvert(_ str: String) -> Int {
        var uppercase: Int = 0
        var lowercase: Int = 0
        for n in str{
            if n.isUppercase{
                uppercase = uppercase + 1
            }else{
                lowercase = lowercase + 1
            }
        }
        if uppercase > lowercase{
            return lowercase
        }
        return uppercase
    }


}

