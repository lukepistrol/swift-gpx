//
//  Track.swift
//  swift-gpx
//
//  Created by Lukas Pistrol on 07.04.25.
//

import Foundation

extension GPX {
    public struct Track: Codable {

        enum CodingKeys: String, CodingKey {
            case name, description, number, type
            case segments = "trkseg"
            case comment = "cmt"
            case source = "src"
            case links = "link"
        }

        public var name: String?
        public var comment: String?
        public var description: String?
        public var source: String?
        public var links: [Link]?
        public var number: UInt?
        public var type: String?
        public var segments: [TrackSegment]
    }

    public struct TrackSegment: Codable {

        enum CodingKeys: String, CodingKey {
            case trackPoints = "trkpt"
        }

        public var trackPoints: [Waypoint]
    }
}
