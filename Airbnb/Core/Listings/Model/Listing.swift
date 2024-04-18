//
//  Listing.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 18/04/2024.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longtitude: Double
    var imageURLs: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features: [ListingFeatures]
    var amentities: [ListingAmentities]
    var listingType: ListingType
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var imageName: String {
        switch self {
        case .selfCheckIn:
            return "door.left.hand.open"
        case .superHost:
            return "Superhost"
        }
    }
    var title: String {
        switch self {
        case .selfCheckIn:
            return "Self check-in"
        case .superHost:
            return "Superhost"
        }
    }
    var subTitle: String {
        switch self {
        case .selfCheckIn:
            return "Check yourself in with the keypad."
        case .superHost:
            return "Superhosts are experienced, highly rated hosts who are commited to providing great stars for guests."
        }
    }
    
    var id: Int { return self.rawValue }
}

enum ListingAmentities: Int, Codable, Identifiable, Hashable {
    case pool // id = 0
    case kitchen // id = 1
    case wifi // id = 2 ...
    case laundry
    case tv
    case parking
    case evCharging
    case alarmSystem
    case office
    case balkony
    
    var title : String {
        switch self {
        case .pool:
            return "Pool"
        case .kitchen:
            return "Kitchen"
        case .wifi:
            return "Wifi"
        case .laundry:
            return "Laundry"
        case .tv:
            return "TV"
        case .parking:
            return "Parking"
        case .alarmSystem:
            return "Alarm System"
        case .office:
            return "Office"
        case .balkony:
            return "Balkony"
        case .evCharging:
            return "EV Charging"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool:
            return "figure.pool.swim"
        case .kitchen:
            return "fork.knife"
        case .wifi:
            return "wifi"
        case .laundry:
            return "washer"
        case .tv:
            return "tv"
        case .parking:
            return "car"
        case .alarmSystem:
            return "checkerboard.shield"
        case .office:
            return "pencil.and.ruler.fill"
        case .balkony:
            return "building"
        case .evCharging:
            return  "bolt.car"
        }
    }
    
    var id: Int { return self.rawValue } // list format,
}

enum ListingType: Int, Identifiable, Codable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartment:
            return "Apartment"
        case .house:
            return "House"
        case .townHouse:
            return "Town House"
        case .villa:
            return "Villa"
        }
    }
    
    var id: Int { return self.rawValue }
}
