//
//  DayShifts.swift
//  CodingChallenge
//
//  Created by Wojciech Kudrynski on 19/12/2022.
//

import Foundation

struct DayShifts: Codable {
    let date: String
    let shifts: [Shift]
}
