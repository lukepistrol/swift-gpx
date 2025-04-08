//
//  Metadata.swift
//  swift-gpx
//
//  Created by Lukas Pistrol on 07.04.25.
//

import Foundation
import XMLCoder

extension GPX {
    public struct Metadata: Codable, DynamicNodeDecoding, DynamicNodeEncoding {
        enum CodingKeys: String, CodingKey {
            case name, author, time, keywords, bounds
            case description = "desc"
            case links = "link"
        }

        public var name: String?
        public var description: String?
        public var author: Person?
        public var copyright: Copyright?
        public var links: [Link]?
        public var time: Date?
        public var keywords: String?
        public var bounds: Bounds?

        public static func nodeDecoding(for key: any CodingKey) -> XMLDecoder.NodeDecoding {
            return .element
        }

        public static func nodeEncoding(for key: any CodingKey) -> XMLEncoder.NodeEncoding {
            return .element
        }
    }

    public struct Copyright: Codable, DynamicNodeDecoding, DynamicNodeEncoding {
        enum CodingKeys: String, CodingKey {
            case year, author, license
        }
        public var year: UInt
        public var license: String?

        public var author: String?

        public static func nodeEncoding(for key: any CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case CodingKeys.author:
                return .attribute
            default:
                return .element
            }
        }

        public static func nodeDecoding(for key: any CodingKey) -> XMLDecoder.NodeDecoding {
            switch key {
            case CodingKeys.author:
                return .attribute
            default:
                return .element
            }
        }
    }

    public struct Person: Codable {
        enum CodingKeys: String, CodingKey {
            case name, email, link
        }

        public var name: String?
        public var email: Email?
        public var link: Link?
    }

    public struct Email: Codable, DynamicNodeDecoding, DynamicNodeEncoding {
        enum CodingKeys: String, CodingKey {
            case id, domain
        }

        public var id: String
        public var domain: String

        public static func nodeDecoding(for key: any CodingKey) -> XMLDecoder.NodeDecoding {
            return .attribute
        }

        public static func nodeEncoding(for key: any CodingKey) -> XMLEncoder.NodeEncoding {
            return .attribute
        }
    }

    public struct Bounds: Codable, DynamicNodeDecoding, DynamicNodeEncoding {
        enum CodingKeys: String, CodingKey {
            case minLatitude = "minlat"
            case minLongitude = "minlon"
            case maxLatitude = "maxlat"
            case maxLongitude = "maxlon"
        }

        public var minLatitude: Double
        public var minLongitude: Double
        public var maxLatitude: Double
        public var maxLongitude: Double

        public static func nodeDecoding(for key: any CodingKey) -> XMLDecoder.NodeDecoding {
            return .attribute
        }

        public static func nodeEncoding(for key: any CodingKey) -> XMLEncoder.NodeEncoding {
            return .attribute
        }
    }
}
