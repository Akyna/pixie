import Flutter
import UIKit

public class SwiftPixiePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "pixie", binaryMessenger: registrar.messenger())
    let instance = SwiftPixiePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("Hello pixie!")
  }
}
