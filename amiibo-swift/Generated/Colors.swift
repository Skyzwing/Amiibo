// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSColor
  internal typealias Color = NSColor
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIColor
  internal typealias Color = UIColor
#endif

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Colors

// swiftlint:disable identifier_name line_length type_body_length
internal struct ColorName {
  internal let rgbaValue: UInt32
  internal var color: Color { return Color(named: self) }

  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#434b52"></span>
  /// Alpha: 100% <br/> (0x434b52ff)
  internal static let darkGray = ColorName(rgbaValue: 0x434b52ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#8e8e8e"></span>
  /// Alpha: 100% <br/> (0x8e8e8eff)
  internal static let gray = ColorName(rgbaValue: 0x8e8e8eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f7f7f7"></span>
  /// Alpha: 100% <br/> (0xf7f7f7ff)
  internal static let lightGray = ColorName(rgbaValue: 0xf7f7f7ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#cbbee9"></span>
  /// Alpha: 100% <br/> (0xcbbee9ff)
  internal static let primary = ColorName(rgbaValue: 0xcbbee9ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d0021b"></span>
  /// Alpha: 100% <br/> (0xd0021bff)
  internal static let red = ColorName(rgbaValue: 0xd0021bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#dbd4eb"></span>
  /// Alpha: 100% <br/> (0xdbd4ebff)
  internal static let secondary = ColorName(rgbaValue: 0xdbd4ebff)
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

internal extension Color {
  convenience init(rgbaValue: UInt32) {
    let components = RGBAComponents(rgbaValue: rgbaValue).normalized
    self.init(red: components[0], green: components[1], blue: components[2], alpha: components[3])
  }
}

private struct RGBAComponents {
  let rgbaValue: UInt32

  private var shifts: [UInt32] {
    [
      rgbaValue >> 24, // red
      rgbaValue >> 16, // green
      rgbaValue >> 8,  // blue
      rgbaValue        // alpha
    ]
  }

  private var components: [CGFloat] {
    shifts.map {
      CGFloat($0 & 0xff)
    }
  }

  var normalized: [CGFloat] {
    components.map { $0 / 255.0 }
  }
}

internal extension Color {
  convenience init(named color: ColorName) {
    self.init(rgbaValue: color.rgbaValue)
  }
}
