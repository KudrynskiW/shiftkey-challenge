//
//  LocalizedSpeciality.swift
//  CodingChallenge
//
//  Created by Wojciech Kudrynski on 19/12/2022.
//

import Foundation

struct LocalizedSpeciality: Codable {
    let id: Int
    let specialityId: Int
    let stateId: Int
    let name: String
    let abbreviation: String
    let speciality: Speciality
    
    enum CodingKeys: String, CodingKey {
        case id
        case specialityId = "specialty_id"
        case stateId = "state_id"
        case name
        case abbreviation
        case speciality
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        specialityId = try container.decode(Int.self, forKey: .specialityId)
        stateId = try container.decode(Int.self, forKey: .stateId)
        name = try container.decode(String.self, forKey: .name)
        abbreviation = try container.decode(String.self, forKey: .abbreviation)
        speciality = try container.decode(Speciality.self, forKey: .speciality)
    }
}
