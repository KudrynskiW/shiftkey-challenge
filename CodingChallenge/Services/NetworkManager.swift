//
//  NetworkManager.swift
//  CodingChallenge
//
//  Created by Wojciech Kudrynski on 19/12/2022.
//

import Foundation

class NetworkManager {
    enum NetworkManagerError: Error {
        case invalidURL
    }
    
    static func fetchShifts() async throws -> ShiftsResponse {
        let url = URL(string: Constants.API.availableShiftsEndpoint)
        
        guard let url = url else {
            throw NetworkManagerError.invalidURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let shiftsResult = try JSONDecoder().decode(ShiftsResponse.self, from: data)
        
        return shiftsResult
    }
    
}
