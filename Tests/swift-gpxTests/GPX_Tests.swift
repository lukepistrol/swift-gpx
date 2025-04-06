import Testing
import XMLCoder
import Foundation
@testable import SwiftGPX

@Test(
    "Test Decoding GPX XML Data",
    arguments: TestData.allCases,
)
func testDecode(_ testData: TestData) async throws {
    let data = testData.string.data(using: .utf8)!
    let decoder = XMLDecoder()
    decoder.dateDecodingStrategy = .formatted(RFC3339DateFormatter())
    let gpx = try decoder.decode(GPX.self, from: data)
    switch testData {
    case .route:
        #expect(gpx.routes?.count == 1)
        #expect(gpx.routes?.first?.routePoints.count == 4)
        #expect(gpx.routes?.first?.name == "Untitled")
    case .track:
        #expect(gpx.tracks?.count == 1)
        #expect(gpx.tracks?.first?.segments.first?.trackPoints.count == 4)
        #expect(gpx.tracks?.first?.name == "Untitled")
    case .waypoint:
        #expect(gpx.waypoints?.count == 4)
    }
}
