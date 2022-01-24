// Copyright (c) 2022 Mel Aguoth All rights reserved.
//
// Created By: Mel Aguoth
// Date: January 24, 2022
// This displays the movement of discs in "Towres of Hanoi" using recursion.

// Import modules.
import Foundation

func discMovement(discNum: Int, startRod: Int, endRod: Int) {
  // Display the formatted disc movement.
  print("Disc \(discNum): Tower \(startRod) to Tower \(endRod)")
}

func hanoi(discNum: Int, startRod: Int, endRod: Int) {

  // Display the movements of 'Towers of Hanoi' for only 1 disc.
  if discNum == 1 {
    discMovement(discNum: discNum, startRod: startRod, endRod: endRod)

  // Display the movements of 'Towers of Hanoi' for 2 or more discs.
  } else {
    let middleRod: Int = 6 - (startRod + endRod)
    hanoi(discNum: discNum - 1, startRod: startRod, endRod: middleRod)
    discMovement(discNum: discNum, startRod: startRod, endRod: endRod)
    hanoi(discNum: discNum - 1, startRod: middleRod, endRod: endRod)
  }
}

// Introduce the program.
print("This program displays the movement of discs in 'Towers of Hanoi.'")

// Get the user's number of discs.
print("Enter the number of discs on Tower 1 (positive integer):", terminator: " ")
let userString: String = readLine() ?? ""
let userInt: Int = Int(userString) ?? 0

// If the user's input isn't an integer, display an error to the user.
if Int(userString) == nil {
  print("\n" + "'\(userString)' isn't an integer. Please enter a proper integer.")

// If the user's number of discs isn't above 0, display an error to the user.
} else if userInt < 0 {
  print("\n" + "\(userInt) isn't a positive integer. Please enter an integer above 0.")

} else {

  // Call hanoi.
  print("")
  hanoi(discNum: userInt, startRod: 1, endRod: 3)
  print("Finished.")
}
