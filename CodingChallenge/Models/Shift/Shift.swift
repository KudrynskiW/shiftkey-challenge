//
//  Shift.swift
//  CodingChallenge
//
//  Created by Wojciech Kudrynski on 19/12/2022.
//

import Foundation

enum ShiftKind: String, Codable {
    case Day = "Day Shift"
    case Night = "Night Shift"
}

struct Shift: Codable {
    let id: Int
    let startTime: Date
    let endTime: Date
    let premiumRate: Bool
    let covid: Bool
    let kind: ShiftKind
    let distance: Int
    let facilityType: FacilityType
    let skill: Skill
    let localizedSpeciality: LocalizedSpeciality
    
    enum CodingKeys: String, CodingKey {
        case id = "shift_id"
        case startTime = "start_time"
        case endTime = "end_time"
        case premiumRate = "premium_rate"
        case covid
        case kind = "shift_kind"
        case distance = "within_distance"
        case facilityType = "facility_type"
        case skill
        case localizedSpeciality = "localized_specialty"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        startTime = try container.decode(Date.self, forKey: .startTime)
        endTime = try container.decode(Date.self, forKey: .endTime)
        premiumRate = try container.decode(Bool.self, forKey: .premiumRate)
        covid = try container.decode(Bool.self, forKey: .covid)
        kind = try container.decode(ShiftKind.self, forKey: .kind)
        distance = try container.decode(Int.self, forKey: .distance)
        facilityType = try container.decode(FacilityType.self, forKey: .facilityType)
        skill = try container.decode(Skill.self, forKey: .skill)
        localizedSpeciality = try container.decode(LocalizedSpeciality.self, forKey: .localizedSpeciality)
    }
}
