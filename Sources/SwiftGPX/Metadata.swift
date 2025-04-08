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

        public init(
            name: String? = nil,
            description: String? = nil,
            author: Person? = nil,
            copyright: Copyright? = nil,
            links: [Link]? = nil,
            time: Date? = nil,
            keywords: String? = nil,
            bounds: Bounds? = nil
        ) {
            self.name = name
            self.description = description
            self.author = author
            self.copyright = copyright
            self.links = links
            self.time = time
            self.keywords = keywords
            self.bounds = bounds
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

        public init(year: UInt, license: String? = nil, author: String? = nil) {
            self.year = year
            self.license = license
            self.author = author
        }
    }

    public struct Person: Codable {
        enum CodingKeys: String, CodingKey {
            case name, email, link
        }

        public var name: String?
        public var email: Email?
        public var link: Link?

        public init(name: String, email: Email? = nil, link: Link? = nil) {
            self.name = name
            self.email = email
            self.link = link
        }
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

        public init(id: String, domain: String) {
            self.id = id
            self.domain = domain
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

        public init(
            minLatitude: Double,
            minLongitude: Double,
            maxLatitude: Double,
            maxLongitude: Double
        ) {
            self.minLatitude = minLatitude
            self.minLongitude = minLongitude
            self.maxLatitude = maxLatitude
            self.maxLongitude = maxLongitude
        }
    }
}
