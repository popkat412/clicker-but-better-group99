//
//  Timing.swift
//  Clicker but Better
//
//  Created by Wang Yunze on 24/8/20.
//  Copyright © 2020 yunze. All rights reserved.
//

import Foundation

struct Timing: Codable {
    var timeTaken: Double
    var timestamp: Date
    
    static func getArchiveURL() -> URL {
        let plistName = "timings"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        return documentsDirectory.appendingPathComponent(plistName).appendingPathExtension("plist")
    }

    static func saveToFile(timings: [Timing]) {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedFriends = try? propertyListEncoder.encode(timings)
        try? encodedFriends?.write(to: archiveURL, options: .noFileProtection)
    }

    static func loadFromFile() -> [Timing]? {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        guard let retrievedFriendsData = try? Data(contentsOf: archiveURL) else { return nil }
        guard let decodedFriends = try? propertyListDecoder.decode([Timing].self, from: retrievedFriendsData) else { return nil }
        return decodedFriends
    }
}
