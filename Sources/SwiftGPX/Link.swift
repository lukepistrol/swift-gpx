//
//  Link.swift
//  swift-gpx
//
//  Created by Lukas Pistrol on 07.04.25.
//

import Foundation
import XMLCoder

extension GPX {
    public struct Link: Codable, DynamicNodeDecoding, DynamicNodeEncoding {
        enum CodingKeys: String, CodingKey {
            case href
            case text
            case type
        }

        public var href: String
        public var text: String?
        public var type: String?

        public static func nodeDecoding(for key: any CodingKey) -> XMLDecoder.NodeDecoding {
            switch key {
            case CodingKeys.href:
                return .attribute
            default:
                return .element
            }
        }

        public static func nodeEncoding(for key: any CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case CodingKeys.href:
                return .attribute
            default:
                return .element
            }
        }
    }
}
