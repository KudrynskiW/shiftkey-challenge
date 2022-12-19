//
//  ShiftsResponse.swift
//  CodingChallenge
//
//  Created by Wojciech Kudrynski on 19/12/2022.
//

import Foundation

struct ShiftsResponse: Codable {
    let data: [DayShifts]
    let links: [String]
    let meta: ShiftsMeta
}

