//
//  TestData.swift
//  swift-gpx
//
//  Created by Lukas Pistrol on 07.04.25.
//

enum TestData: CaseIterable {
    case track, waypoint, route

    var string: String {
        switch self {
        case .track:
            return testTrack
        case .waypoint:
            return testWaypoint
        case .route:
            return testRoute
        }
    }
}

private let testWaypoint = """
<?xml version="1.0" encoding="UTF-8"?>
<gpx version="1.1" creator="Garmin Connect"
  xsi:schemaLocation="http://www.topografix.com/GPX/1/1 http://www.topografix.com/GPX/1/1/gpx.xsd http://www.garmin.com/xmlschemas/GpxExtensions/v3 http://www.garmin.com/xmlschemas/GpxExtensionsv3.xsd http://www.garmin.com/xmlschemas/TrackPointExtension/v1 http://www.garmin.com/xmlschemas/TrackPointExtensionv1.xsd"
  xmlns="http://www.topografix.com/GPX/1/1"
  xmlns:gpxtpx="http://www.garmin.com/xmlschemas/TrackPointExtension/v1"
  xmlns:gpxx="http://www.garmin.com/xmlschemas/GpxExtensions/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <metadata>
    <link href="connect.garmin.com">
      <text>Garmin Connect</text>
    </link>
    <time>2012-10-24T23:22:51.000Z</time>
  </metadata>
  <wpt lon="-77.02016168273985" lat="38.92747367732227">
    <ele>25.600000381469727</ele>
    <time>2012-10-24T23:29:40.000Z</time>
    <extensions>
      <gpxtpx:TrackPointExtension>
        <gpxtpx:hr>130</gpxtpx:hr>
      </gpxtpx:TrackPointExtension>
    </extensions>
  </wpt>
  <wpt lon="-77.02014584094286" lat="38.927609380334616">
    <ele>35.599998474121094</ele>
    <time>2012-10-24T23:30:00.000Z</time>
    <extensions>
      <gpxtpx:TrackPointExtension>
        <gpxtpx:hr>134</gpxtpx:hr>
      </gpxtpx:TrackPointExtension>
    </extensions>
  </wpt>
  <wpt lon="-77.02007895335555" lat="38.927675262093544">
    <ele>38.0</ele>
    <time>2012-10-24T23:30:01.000Z</time>
    <extensions>
      <gpxtpx:TrackPointExtension>
        <gpxtpx:hr>139</gpxtpx:hr>
      </gpxtpx:TrackPointExtension>
    </extensions>
  </wpt>
  <wpt lon="-77.0200021751225" lat="38.927735360339284">
    <ele>40.0</ele>
    <time>2012-10-24T23:30:03.000Z</time>
    <extensions>
      <gpxtpx:TrackPointExtension>
        <gpxtpx:hr>144</gpxtpx:hr>
      </gpxtpx:TrackPointExtension>
    </extensions>
  </wpt>
</gpx>
"""

private let testTrack = """
<?xml version="1.0" encoding="UTF-8"?>
<gpx version="1.1" creator="Garmin Connect"
  xsi:schemaLocation="http://www.topografix.com/GPX/1/1 http://www.topografix.com/GPX/1/1/gpx.xsd http://www.garmin.com/xmlschemas/GpxExtensions/v3 http://www.garmin.com/xmlschemas/GpxExtensionsv3.xsd http://www.garmin.com/xmlschemas/TrackPointExtension/v1 http://www.garmin.com/xmlschemas/TrackPointExtensionv1.xsd"
  xmlns="http://www.topografix.com/GPX/1/1"
  xmlns:gpxtpx="http://www.garmin.com/xmlschemas/TrackPointExtension/v1"
  xmlns:gpxx="http://www.garmin.com/xmlschemas/GpxExtensions/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <metadata>
    <link href="connect.garmin.com">
      <text>Garmin Connect</text>
    </link>
    <time>2012-10-24T23:22:51.000Z</time>
  </metadata>
  <trk>
    <name>Untitled</name>
    <trkseg>
      <trkpt lon="-77.02016168273985" lat="38.92747367732227">
        <ele>25.600000381469727</ele>
        <time>2012-10-24T23:29:40.000Z</time>
        <extensions>
          <gpxtpx:TrackPointExtension>
            <gpxtpx:hr>130</gpxtpx:hr>
          </gpxtpx:TrackPointExtension>
        </extensions>
      </trkpt>
      <trkpt lon="-77.02014584094286" lat="38.927609380334616">
        <ele>35.599998474121094</ele>
        <time>2012-10-24T23:30:00.000Z</time>
        <extensions>
          <gpxtpx:TrackPointExtension>
            <gpxtpx:hr>134</gpxtpx:hr>
          </gpxtpx:TrackPointExtension>
        </extensions>
      </trkpt>
      <trkpt lon="-77.02007895335555" lat="38.927675262093544">
        <ele>38.0</ele>
        <time>2012-10-24T23:30:01.000Z</time>
        <extensions>
          <gpxtpx:TrackPointExtension>
            <gpxtpx:hr>139</gpxtpx:hr>
          </gpxtpx:TrackPointExtension>
        </extensions>
      </trkpt>
      <trkpt lon="-77.0200021751225" lat="38.927735360339284">
        <ele>40.0</ele>
        <time>2012-10-24T23:30:03.000Z</time>
        <extensions>
          <gpxtpx:TrackPointExtension>
            <gpxtpx:hr>144</gpxtpx:hr>
          </gpxtpx:TrackPointExtension>
        </extensions>
      </trkpt>
    </trkseg>
  </trk>
</gpx>
"""

private let testRoute = """
<?xml version="1.0" encoding="UTF-8"?>
<gpx version="1.1" creator="Garmin Connect"
  xsi:schemaLocation="http://www.topografix.com/GPX/1/1 http://www.topografix.com/GPX/1/1/gpx.xsd http://www.garmin.com/xmlschemas/GpxExtensions/v3 http://www.garmin.com/xmlschemas/GpxExtensionsv3.xsd http://www.garmin.com/xmlschemas/TrackPointExtension/v1 http://www.garmin.com/xmlschemas/TrackPointExtensionv1.xsd"
  xmlns="http://www.topografix.com/GPX/1/1"
  xmlns:gpxtpx="http://www.garmin.com/xmlschemas/TrackPointExtension/v1"
  xmlns:gpxx="http://www.garmin.com/xmlschemas/GpxExtensions/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <metadata>
    <link href="connect.garmin.com">
      <text>Garmin Connect</text>
    </link>
    <time>2012-10-24T23:22:51.000Z</time>
  </metadata>
  <rte>
    <name>Untitled</name>
    <rtept lon="-77.02016168273985" lat="38.92747367732227">
      <ele>25.600000381469727</ele>
      <time>2012-10-24T23:29:40.000Z</time>
      <extensions>
        <gpxtpx:TrackPointExtension>
          <gpxtpx:hr>130</gpxtpx:hr>
        </gpxtpx:TrackPointExtension>
      </extensions>
    </rtept>
    <rtept lon="-77.02014584094286" lat="38.927609380334616">
      <ele>35.599998474121094</ele>
      <time>2012-10-24T23:30:00.000Z</time>
      <extensions>
        <gpxtpx:TrackPointExtension>
          <gpxtpx:hr>134</gpxtpx:hr>
        </gpxtpx:TrackPointExtension>
      </extensions>
    </rtept>
    <rtept lon="-77.02007895335555" lat="38.927675262093544">
      <ele>38.0</ele>
      <time>2012-10-24T23:30:01.000Z</time>
      <extensions>
        <gpxtpx:TrackPointExtension>
          <gpxtpx:hr>139</gpxtpx:hr>
        </gpxtpx:TrackPointExtension>
      </extensions>
    </rtept>
    <rtept lon="-77.0200021751225" lat="38.927735360339284">
      <ele>40.0</ele>
      <time>2012-10-24T23:30:03.000Z</time>
      <extensions>
        <gpxtpx:TrackPointExtension>
          <gpxtpx:hr>144</gpxtpx:hr>
        </gpxtpx:TrackPointExtension>
      </extensions>
    </rtept>
  </rte>
</gpx>
"""
