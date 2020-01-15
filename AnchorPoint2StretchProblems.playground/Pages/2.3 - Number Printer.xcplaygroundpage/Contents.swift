//: [Protocols](@previous)
/*:
 # Wednesday Stretch Problem 2.3
 ## Number Printer
 ### Instructions
 - Create a function that takes a single digit `Int` as a parameter and prints it to the console the way an old-school alarm clock would look. You may create auxiliary functions if needed.
 - For example, if you pass 2 the console might look something like this:
 ```
  ---
     |
  ---
 |
  ---
 ```
 - If you pass 8 the console might look something like this:
 ```
  ---
 |   |
  ---
 |   |
  ---
 ```
 
 ### Black Diamond 💎💎💎
 - Modify the function to take an `Int` with multiple digits and print each number in the same fashion on a single Line.
 - For example, if you pass 257 the console might look something like this:
 ```
  ---   ---  ---
     | |        |
  ---   ---     |
 |         |    |
  ---   ---     |
```
 */
import Foundation


func printLine() {
    print("  ---")
}

func printTwoVert() {
    print(" |   | ")
}

func printOneVertLeft() {
    print(" |")
}

func printOneVertRight() {
    print("     |")
}

func numberPrinter(num: Int) {
    if num > 9 || num < 0 {
        print("Invalid param")
        return
    }
    
    if num == 0 {
        printLine()
        printTwoVert()
        printTwoVert()
        printTwoVert()
        printLine()
    } else if num == 1 {
        printOneVertLeft()
        printOneVertLeft()
        printOneVertLeft()
        printOneVertLeft()
        printOneVertLeft()
    } else if num == 2 {
        printLine()
        printOneVertRight()
        printLine()
        printOneVertLeft()
        printLine()
    } else if num == 3 {
        printLine()
        printOneVertRight()
        printLine()
        printOneVertRight()
        printLine()
    } else if num == 4 {
        printTwoVert()
        printTwoVert()
        printLine()
        printOneVertRight()
        printOneVertRight()
    } else if num == 5 {
        printLine()
        printOneVertLeft()
        printLine()
        printOneVertRight()
        printLine()
    } else if num == 6 {
        printLine()
        printOneVertLeft()
        printLine()
        printTwoVert()
        printLine()
    } else if num == 7 {
        printLine()
        printOneVertRight()
        printOneVertRight()
        printOneVertRight()
        printOneVertRight()
    } else if num == 8 {
        printLine()
        printTwoVert()
        printLine()
        printTwoVert()
        printLine()
    } else if num == 9 {
        printLine()
        printTwoVert()
        printLine()
        printOneVertRight()
        printLine()
    }
}

numberPrinter(num: 2)
//: [Ternary Operator](@next)
