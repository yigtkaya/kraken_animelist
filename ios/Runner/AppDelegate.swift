import UIKit
import Flutter
import FirebaseCore

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    FirebaseApp.configure()

            if let flutterViewController = window?.rootViewController as? FlutterViewController {
            let methodChannel = FlutterMethodChannel(name: "fetchAnimelist", binaryMessenger: flutterViewController.binaryMessenger)
            methodChannel.setMethodCallHandler { [weak self] (call: FlutterMethodCall, result: FlutterResult) in
                if call.method == "fetchAnimelist" {
                    // Perform platform-specific operations and obtain the result
                    let data = self?.getDataFromNative()

                    // Send the result back to Flutter
                    result(data)
                } else {
                    result(FlutterMethodNotImplemented)
                }
            }
        }

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
