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

        public init(
            name: String? = nil,
            comment: String? = nil,
            description: String? = nil,
            source: String? = nil,
            links: [Link]? = nil,
            number: UInt? = nil,
            type: String? = nil,
            segments: [TrackSegment]
        ) {
            self.name = name
            self.comment = comment
            self.description = description
            self.source = source
            self.links = links
            self.number = number
            self.type = type
            self.segments = segments
        }
    }

    public struct TrackSegment: Codable {

        enum CodingKeys: String, CodingKey {
            case trackPoints = "trkpt"
        }

        public var trackPoints: [Waypoint]

        public init(trackPoints: [Waypoint]) {
            self.trackPoints = trackPoints
        }
    }
}
