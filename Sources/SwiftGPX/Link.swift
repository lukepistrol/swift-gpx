//
//  Link.swift
//  swift-gpx
//
//  Created by Lukas Pistrol on 07.04.25.
//

import Foundation

public struct Link: Codable {
    enum CodingKeys: String, CodingKey {
        case href
        case text
        case type
    }

    public var href: String?
    public var text: String?
    public var type: String?
}
