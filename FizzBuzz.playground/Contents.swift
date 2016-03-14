import UIKit

//: Creating a custom data type of unsigned Int
typealias Number = UInt64

//: Define the limit of the loop
let lowerLimit:Number = 1
let upperLimit:Number = 100

//: Funtion to define the logic for the FizzBuzz
func fizzBuzz(n:Number) -> (Number, String)? {
    if n%3 == 0 && n%5 == 0 {
        return (n, "FizzBuzz")
    } else if n%3 == 0 {
        return (n, "Fizz")
    } else if n%5 == 0 {
        return (n, "Buzz")
    } else {
        return (n, "")
    }
}

//: Loops through the limit and prints the result
for index in lowerLimit...upperLimit {
    
    let result = fizzBuzz(index)
    
    if result!.1 == "" {
        print("\(result!.0)")
    } else {
        print("\(result!.1)")
    }
}

