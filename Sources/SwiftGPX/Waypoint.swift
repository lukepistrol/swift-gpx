//
//  Waypoint.swift
//  swift-gpx
//
//  Created by Lukas Pistrol on 07.04.25.
//

import Foundation
import XMLCoder

extension GPX {
    public struct Waypoint: Codable, DynamicNodeDecoding, DynamicNodeEncoding {
        enum CodingKeys: String, CodingKey {
            case latitude = "lat"
            case longitude = "lon"
            case elevation = "ele"
            case time, name, type, fix, sat
            case magneticVariation = "magvar"
            case geoidHeight = "geoidheight"
            case comment = "cmt"
            case description = "desc"
            case source = "src"
            case links = "link"
            case symbol = "sym"
            case horizontalDilution = "hdop"
            case verticalDilution = "vdop"
            case positionDilution = "pdop"
        }

        public var latitude: Double
        public var longitude: Double

        public var elevation: Double?
        public var time: Date?
        public var name: String?
        public var magneticVariation: Double?
        public var geoidHeight: Double?
        public var comment: String?
        public var description: String?
        public var source: String?
        public var links: [Link]?
        public var symbol: String?
        public var type: String?
        public var fix: String?
        public var sat: UInt?
        public var horizontalDilution: Double?
        public var verticalDilution: Double?
        public var positionDilution: Double?

        public static func nodeDecoding(for key: any CodingKey) -> XMLDecoder.NodeDecoding {
            switch key {
            case CodingKeys.latitude, CodingKeys.longitude:
                return .attribute
            default:
                return .element
            }
        }

        public static func nodeEncoding(for key: any CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case CodingKeys.latitude, CodingKeys.longitude:
                return .attribute
            default:
                return .element
            }
        }

        public init(
            latitude: Double,
            longitude: Double,
            elevation: Double? = nil,
            time: Date? = nil,
            name: String? = nil,
            magneticVariation: Double? = nil,
            geoidHeight: Double? = nil,
            comment: String? = nil,
            description: String? = nil,
            source: String? = nil,
            links: [Link]? = nil,
            symbol: String? = nil,
            type: String? = nil,
            fix: String? = nil,
            sat: UInt? = nil,
            horizontalDilution: Double? = nil,
            verticalDilution: Double? = nil,
            positionDilution: Double? = nil
        ) {
            self.latitude = latitude
            self.longitude = longitude
            self.elevation = elevation
            self.time = time
            self.name = name
            self.magneticVariation = magneticVariation
            self.geoidHeight = geoidHeight
            self.comment = comment
            self.description = description
            self.source = source
            self.links = links
            self.symbol = symbol
            self.type = type
            self.fix = fix
            self.sat = sat
            self.horizontalDilution = horizontalDilution
            self.verticalDilution = verticalDilution
            self.positionDilution = positionDilution
        }
    }
}
