//: [Number Printer](@previous)
/*:
 # Thursday Stretch Problem 2.4
 ## Ternary Operator
 ### Instructions - PART 1
 - Make an array of 10 Ints. Then make a function that takes a parameter of `[Int]` and loops through the array.
 - If the value is below 50, print "low". Otherwise, print "high."
 - Test your function by passing in the array.
 - Now add an if statement to your loop so that if the value is divisible by 13 it also prints "didn't learn this one in school," otherwise print "that's easy."
 - Add another if statement to your loop so that if the value is greater than the previous value it also prints "getting bigger" otherwise print "it's stopped growing" (for the first value, you can compare it to 0).
 - An example of the print statement would be `low, that's easy, getting bigger.`
 - NOTE: you may want to create a "print" variable and add to it every time we add a new piece of logic, i.e. `var printStatement = ""`, then start adding to it `printStatement += "low"`, etc.
 
 ### Instructions - PART 2
 - Change your code to use ternary operators (see "Ternary Conditional Operator" in the Swift Programming Guide)
 
 ### Instructions - PART 3
 - Create two optional values, one set to nil and one not set to nil, and use “nil coalescing” (also see documentation or the Swift Programming Guide) to unwrap each optional value (in place of if let)
 
 ### Black Diamond 💎💎💎
 - Write a function called "nestedTernary" that takes in a single integer.
 - If the integer is greater than 50 and even, it should print "big even". If it is greater than 50 and odd, it should print "big odd".
 - Likewise, a smaller integer should print "little even" or "little odd".
 - Do this using a nested ternary operator instead of `if` statements.
 */
import Foundation

let arr = [1, 51, 26, 50, 2, 5, 7, 6, 6, 8]

//print(true && false ? "Result is \(true && false)" : true || false ? "Result is \(true || false)" : false || false ? "Result is \(false || false)" : "The condition is unknown")


func highLow(arr: [Int]) {
    for (i, num) in arr.enumerated() {
        print(arr[i])
        
//        if num < 50 {
//            print("Low")
//        } else {
//            print("High")
//        }
        
        print(num < 50 ? "Low" : "High")
        
//        if num % 13 == 0 {
//            print("Didn't learn this one in school")
//        } else {
//            print("That's easy")
//        }
        
        print(num % 13 == 0 ? "Didn't learn this one in school" : "That's easy")
        
//        if i == 0 && num > 0 {
//            print("Getting bigger")
//        } else if i == 0 && num < 0 {
//            print("It's stopped growing")
//        } else if num > arr[i-1] {
//            print("Getting bigger")
//        } else {
//            print("It's stopped growing")
//        }
        
        print(i == 0 && num > 0 ? "Getting bigger" : i == 0 ? "It's stopped growing" : num > arr[i-1] ? "Getting bigger" : "It's stopped growing")
        print("")
    }
}

highLow(arr: arr)

let name: String? = "Bob"
let food: String? = nil

let foodUW = food ?? "Empty"
let nameUW = name ?? "Empty"

print(foodUW + " " + nameUW)

func nestedTernary(num: Int) {
    print(num > 50 && num % 2 == 0 ? "big even" : num > 50 && num % 2 == 1 ? "big odd" : num % 2 == 0 ? "little even" : "little odd")
}

nestedTernary(num: 60)
