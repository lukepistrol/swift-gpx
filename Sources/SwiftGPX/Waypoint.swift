//
//  Waypoint.swift
//  swift-gpx
//
//  Created by Lukas Pistrol on 07.04.25.
//

import Foundation
import XMLCoder

public struct Waypoint: Codable, DynamicNodeDecoding {
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
}
