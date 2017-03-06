//: Playground - noun: a place where people can play

import UIKit

//Write a program that adds the numbers 1-255 to an array

var arr: [Int] = [Int]()
var i = 1

while i <= 255{
    arr.append(i)
    i += 1
}
print (arr)


//Swap two random values in the array

var array_length = arr.count

var num1 = Int(arc4random_uniform(UInt32(array_length)))
var num2 = Int(arc4random_uniform(UInt32(array_length)))

if num1 != num2 {
    swap(&arr[num1], &arr[num2])


//Now write the code that swaps random values 100 times (You've created a "Shuffle"!)

var j = 1
while j <= 100{
    var num1 = Int(arc4random_uniform(UInt32(array_length)))
    var num2 = Int(arc4random_uniform(UInt32(array_length)))
    if num1 != num2 {
        swap(&arr[num1], &arr[num2])
    }
    j += 1
    
}

//Remove the value "42" from the array and Print "We found the answer to the Ultimate Question of Life, the Universe, and Everything at index __" and print the index of where "42" was before you removed it.

for i in 0..<arr.count {
    if(arr[i] == 42){
        arr.remove(at: i)
        print ("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(i)")
    }
}

