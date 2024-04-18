//
//  DeveloperPreview.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 18/04/2024.
//

import Foundation

class DeveloperPreview {
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Dmytro",
            ownerImageUrl: "maleProfile",
            numberOfBedrooms: 4,
            numberOfBathrooms: 2,
            numberOfGuests: 6,
            numberOfBeds: 3,
            pricePerNight: 210,
            latitude: 50.450001,
            longtitude: 30.523333,
            imageURLs: ["kyiv1_1", "kyiv1_2", "kyiv1_3", "kyiv1_4", "kyiv1_5"],
            address: "Khreschatyk 1",
            city: "Kyiv",
            state: "UA",
            title: "Spacious House",
            rating: 4.9,
            features: [.selfCheckIn, .superHost],
            amentities: [.wifi, .tv, .laundry, .kitchen, .parking, .evCharging, .alarmSystem, .pool],
            listingType: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Alice",
            ownerImageUrl: "maleProfile",
            numberOfBedrooms: 2,
            numberOfBathrooms: 1,
            numberOfGuests: 4,
            numberOfBeds: 2,
            pricePerNight: 100,
            latitude: 40.7128,
            longtitude: 74.0060,
            imageURLs: ["villa1_2", "villa1_1", "villa1_3"],
            address: "123 Main St",
            city: "New York",
            state: "NY",
            title: "Cozy Apartment",
            rating: 4.5,
            features: [.selfCheckIn],
            amentities: [.pool, .wifi, .laundry, .tv],
            listingType: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Bob",
            ownerImageUrl: "maleProfile",
            numberOfBedrooms: 3,
            numberOfBathrooms: 2,
            numberOfGuests: 6,
            numberOfBeds: 3,
            pricePerNight: 200,
            latitude: 34.0522,
            longtitude: 118.2437,
            imageURLs: ["villa1_3", "villa1_2", "villa1_1"],
            address: "456 Broadway",
            city: "Los Angeles",
            state: "CA",
            title: "Luxury Villa",
            rating: 4.7,
            features: [.superHost],
            amentities: [.kitchen, .wifi, .parking, .tv],
            listingType: .townHouse
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Charlie",
            ownerImageUrl: "maleProfile",
            numberOfBedrooms: 1,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePerNight: 80,
            latitude: 51.5074,
            longtitude: 0.1278,
            imageURLs: ["villa1_2", "villa1_1", "villa1_3"],
            address: "789 Park Ave",
            city: "London",
            state: "UK",
            title: "Studio Flat",
            rating: 4.3,
            features: [.selfCheckIn, .superHost],
            amentities: [.wifi, .tv, .laundry, .kitchen],
            listingType: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "David",
            ownerImageUrl: "maleProfile",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 8,
            numberOfBeds: 4,
            pricePerNight: 350,
            latitude: 48.8566,
            longtitude: 2.3522,
            imageURLs: ["kyiv1_3", "villa1_1", "villa1_3"],
            address: "1012 Champs-Élysées",
            city: "Paris",
            state: "FR",
            title: "Charming House",
            rating: 4.8,
            features: [.superHost],
            amentities: [.kitchen, .wifi, .tv, .laundry, .parking],
            listingType: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Eve",
            ownerImageUrl: "maleProfile",
            numberOfBedrooms: 2,
            numberOfBathrooms: 2,
            numberOfGuests: 4,
            numberOfBeds: 2,
            pricePerNight: 150,
            latitude: 35.6895,
            longtitude: 139.6917,
            imageURLs: ["kyiv1_5", "villa1_1", "villa1_3"],
            address: "3456 Shibuya",
            city: "Tokyo",
            state: "JP",
            title: "Modern Condo",
            rating: 4.6,
            features: [.selfCheckIn],
            amentities: [.wifi, .tv, .laundry, .kitchen, .parking],
            listingType: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Frank",
            ownerImageUrl: "maleProfile",
            numberOfBedrooms: 3,
            numberOfBathrooms: 2,
            numberOfGuests: 6,
            numberOfBeds: 3,
            pricePerNight: 180,
            latitude: 41.9028,
            longtitude: 12.4964,
            imageURLs: ["villa1_1", "villa1_2", "villa1_3"],
            address: "7890 Colosseum",
            city: "Rome",
            state: "IT",
            title: "Historic Home",
            rating: 4.4,
            features: [.superHost],
            amentities: [.kitchen, .wifi, .laundry, .tv, .parking],
            listingType: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Grace",
            ownerImageUrl: "maleProfile",
            numberOfBedrooms: 1,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePerNight: 90,
            latitude: 52.5200,
            longtitude: 13.4050,
            imageURLs: ["villa1_2", "villa1_1", "villa1_3"],
            address: "1234 Brandenburg",
            city: "Berlin",
            state: "DE",
            title: "City Center Flat",
            rating: 4.5,
            features: [.selfCheckIn, .superHost],
            amentities: [.wifi, .tv, .laundry, .kitchen, .parking],
            listingType: .townHouse
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Helen",
            ownerImageUrl: "maleProfile",
            numberOfBedrooms: 2,
            numberOfBathrooms: 1,
            numberOfGuests: 4,
            numberOfBeds: 2,
            pricePerNight: 120,
            latitude: -33.8688,
            longtitude: 151.2093,
            imageURLs: ["villa1_2", "villa1_1", "villa1_3"],
            address: "5678 Harbour",
            city: "Sydney",
            state: "AU",
            title: "Harbour View Apartment",
            rating: 4.7,
            features: [.superHost],
            amentities: [.kitchen, .wifi, .laundry, .tv, .parking],
            listingType: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Jane",
            ownerImageUrl: "maleProfile",
            numberOfBedrooms: 1,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePerNight: 75,
            latitude: 39.9042,
            longtitude: 116.4074,
            imageURLs: ["kyiv1_3", "villa1_2", "kyiv1_4", "kyiv1_5"],
            address: "3456 Forbidden City",
            city: "Beijing",
            state: "CN",
            title: "City Center Studio",
            rating: 4.3,
            features: [.superHost],
            amentities: [.wifi, .tv, .laundry, .kitchen],
            listingType: .house
        )
    ]
}

