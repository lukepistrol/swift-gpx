//
//  Route.swift
//  swift-gpx
//
//  Created by Lukas Pistrol on 07.04.25.
//

import Foundation

public struct Route: Codable {

    enum CodingKeys: String, CodingKey {
        case name, description, number, type
        case routePoints = "rtept"
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
    public var routePoints: [Waypoint]
}
