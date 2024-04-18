//
//  ExploreService.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 18/04/2024.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview().listings
    }
}
