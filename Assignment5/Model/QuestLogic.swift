//
//  QuestLogic.swift
//  Assignment5
//
//  Created by Ross Spafford on 2/16/25.
//

import Foundation


struct QuestLogic {
    
    let choices = [
        // Level 1
        Choice(
            text_in: "You find yourself at the edge of a dark forest. Do you:",
            o_one: "Enter the forest",
            o_two: "Walk along the edge",
            o_one_result: 1, // leads to level 2
            o_two_result: 2), // leads to level 3
        
        // Level 2
        Choice(
            text_in: "You enter the forest and find a fork in the path. Do you:",
            o_one: "Take the left path",
            o_two: "Take the right path",
            o_one_result: 3, // leads to level 4
            o_two_result: 4), // leads to level 5
        
        // Level 3
        Choice(
            text_in: "You walk along the edge and encounter a river. Do you:",
            o_one: "Swim across",
            o_two: "Find a bridge",
            o_one_result: 5, // leads to level 6
            o_two_result: 6), // leads to level 7
        
        // Level 4
        Choice(
            text_in: "The left path leads you to a cave. Do you:",
            o_one: "Enter the cave",
            o_two: "Go around it",
            o_one_result: 7, // leads to level 8 (Final Level - Treasure/End)
            o_two_result: 8), // leads to level 8 (Final Level - Demise/End)
        
        // Level 5
        Choice(
            text_in: "The right path leads to a clearing with a strange tree. Do you:",
            o_one: "Climb the tree",
            o_two: "Inspect the roots",
            o_one_result: 7, // leads to level 8 (Final Level - Treasure/End)
            o_two_result: 8), // leads to level 8 (Final Level - Demise/End)
        
        // Level 6
        Choice(
            text_in: "You cross the river and see a small cabin in the distance. Do you:",
            o_one: "Approach the cabin",
            o_two: "Stay hidden and observe",
            o_one_result: 7, // leads to level 8 (Final Level - Treasure/End)
            o_two_result: 8), // leads to level 8 (Final Level - Demise/End)
        
        // Level 7 (Final - Treasure)
        Choice(
            text_in: "You cautiously approach and discover an ancient chest filled with treasure! You are victorious!",
            o_one: "Restart",
            o_two: "Begin Anew",
            o_one_result: 0, // back to start
            o_two_result: 0), // end of the game
        
        // Level 8 (Final - Demise)
        Choice(
            text_in: "You make a wrong move and fall into a hidden trap! This is the end of your adventure.",
            o_one: "Restart",
            o_two: "Begin Anew",
            o_one_result: 0, // back to start
            o_two_result: 0)  // end of the game
    ]
    
    func getText(choiceIndex:Int) -> String {
        return choices[choiceIndex].choiceText
    }
    
    func getButton1Label(choiceIndex:Int) -> String {
        return choices[choiceIndex].option_one
    }
    
    func getButton2Label(choiceIndex:Int) -> String {
        return choices[choiceIndex].option_two
    }
    
    func getButton1Result(choiceIndex:Int) -> Int {
        return choices[choiceIndex].option_one_result
    }
    
    func getButton2Result(choiceIndex:Int) -> Int {
        return choices[choiceIndex].option_two_result
    }
    
    
    
    
    
}
