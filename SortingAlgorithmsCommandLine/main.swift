//
//  main.swift
//  SortingAlgorithmsCommandLine
//
//  Created by Gordon, Russell on 2018-02-26.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// --------------- Convenience functions ---------------

// Generates a random number between the minimum and maximum values given (inclusive)
func random(between min: UInt32, and max: UInt32) -> Int {
    return Int(arc4random_uniform(max - min + 1) + min)
}

// ----------- Start of main part of program -----------

// Ask the user if they are ready to begin
print("Press any key to generate the unsorted list.", terminator: "")

// Wait for a key to be pressed
let input = readLine()

// Make an empty array / list
var unsortedList : [Int] = []

// Populate the array
//for _ in 1...10 {
//    numbers.append( random(between: 1, and: 50) )
//}
unsortedList.append(5)
unsortedList.append(6)
unsortedList.append(3)
unsortedList.append(4)
unsortedList.append(7)

// Show the user the contents of the array
print("-----")
print("The contents of the unsorted list:")
for i in 0...unsortedList.count - 1 {
    print("Index \(i), value: \(unsortedList[i])")
}
print("-----")

// ----------- Write code to sort the array here -----------
print("Now sorting the array...")

// Create new array (sortedList)
var sortedList : [Int] = []

// Sorting the entire list
for underscore in 1...4{
    // assume the first card in my list is the lowest
    var lowestNumberValue = unsortedList[0]
    var lowestNumberPosition = 0
    
    //Check positions 1...4 to see if there is any card that is lower
    for currentPosition in 1...unsortedList.count - 1 {
        // The porpouse of this if statement is to see if there is any other lowest card
        if unsortedList[currentPosition] < lowestNumberValue {
            //If the other card is lowest then my first lowest it becomes my new lowest.
            lowestNumberValue = unsortedList[currentPosition]
            lowestNumberPosition = currentPosition
        }
    }
    
    // Get the lowest number and transfer it for the soreted list.
    unsortedList.remove(at: lowestNumberPosition)
    sortedList.append( lowestNumberValue )
    
}

// Removed to the unsorted list and add to the sorted list
sortedList.append(unsortedList[0])
unsortedList.remove(at: 0)

// ----------- Final part of the program, show the sorted list -----------
print("-----")
print("The contents of the sorted list:")
for i in 0...unsortedList.count - 1 {
    print("Index \(i), value: \(unsortedList[i])")
}
print("-----")


