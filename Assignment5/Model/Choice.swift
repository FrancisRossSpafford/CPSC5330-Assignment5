//
//  Choice.swift
//  Assignment5
//
//  Created by Ross Spafford on 2/16/25.
//

import Foundation


struct Choice {
    
    init( text_in: String,  o_one:String,  o_two: String, o_one_result:Int, o_two_result:Int) {
        choiceText = text_in
        option_one = o_one
        option_two = o_two
        option_one_result = o_one_result
        option_two_result = o_two_result
        
    }
    
    var choiceText: String
    var option_one: String
    var option_two: String
    var option_one_result: Int
    var option_two_result: Int
    
}
