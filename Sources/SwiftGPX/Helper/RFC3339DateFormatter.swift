//
//  RFC3339DateFormatter.swift
//  swift-gpx
//
//  Created by Lukas Pistrol on 07.04.25.
//

import Foundation

/// A date formatter that formats dates in RFC 3339 format.
///
/// This formatter is similar to ISO 8601, but it uses decimal seconds and is always in UTC.
///
/// Basically, if a date has the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ` the ISO 8601 date formatter will
/// fail to parse it correctly.
public class RFC3339DateFormatter: DateFormatter, @unchecked Sendable {
    public override init() {
        super.init()
        dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
