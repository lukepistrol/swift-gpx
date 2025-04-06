//
//  GPX.swift
//  swift-gpx
//
//  Created by Lukas Pistrol on 04.04.25.
//

import Foundation
import XMLCoder

/// Represents a GPX file
///
/// The GPX format is an XML schema designed as a format for transferring GPS data between software applications.
/// It can consist of a collection of waypoints, routes, and tracks.
///
/// > Important: If you want to use the GPX file in Xcode, the data points must be ``waypoints`` and **not** ``routes`` or ``tracks``.
public struct GPX: Codable, DynamicNodeDecoding {
    enum CodingKeys: String, CodingKey {
        case version, creator
        case waypoints = "wpt"
        case routes = "rte"
        case tracks = "trk"
    }

    public var version: String?
    public var creator: String?

    public var waypoints: [Waypoint]?
    public var routes: [Route]?
    public var tracks: [Track]?


    public static func nodeDecoding(for key: any CodingKey) -> XMLDecoder.NodeDecoding {
        switch key {
        case CodingKeys.version, CodingKeys.creator:
            return .attribute
        default:
            return .element
        }
    }
}

