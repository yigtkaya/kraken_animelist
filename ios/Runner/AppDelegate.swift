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
        let methodChannel = FlutterMethodChannel(name: "fetchAnimeList", binaryMessenger: flutterViewController.binaryMessenger)
        methodChannel.setMethodCallHandler { 
            [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) in
            if call.method == "fetchAnimeList" {
                guard let arguments = call.arguments as? Int else {
                    result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid argument type", details: nil))
                    return
                }
                self?.fetchAnimeList(page: arguments, completion: { response in
                    result(response)
                })
            } else if call.method == "fetchCharacterList" {
                guard let id = call.arguments as? Int else {
                  result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid argument type", details: nil))
                  return
                }
                self?.fetchCharacterList(id: id, completion: { response in
                    result(response)
                })
            }
            else {
                result(FlutterMethodNotImplemented)
            }
        }
    }

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func fetchCharacterList(id: Int, completion: @escaping (String?) -> Void) {
    let url = URL(string: "https://api.jikan.moe/v4/anime/\(id)/characters")!
    var request = URLRequest(url: url)
    request.httpMethod = "GET"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type") // Specify 'Content-Type' header
    
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        guard let data = data, error == nil else {
            print("Error: \(error?.localizedDescription ?? "Unknown error")")
            completion(nil)
            return
        }
        
        if let responseString = String(data: data, encoding: .utf8) {
            completion(responseString)
        } else {
            print("Error: Unable to convert data to string")
            completion(nil)
        }
    }
    task.resume()
  }

  private func fetchAnimeList(page: Int, completion: @escaping (String?) -> Void) {
    let url = URL(string: "https://api.jikan.moe/v4/top/anime?page=\(page)")!
    var request = URLRequest(url: url)
    request.httpMethod = "GET"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type") // Specify 'Content-Type' header
    
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        guard let data = data, error == nil else {
            print("Error: \(error?.localizedDescription ?? "Unknown error")")
            completion(nil)
            return
        }
        
        if let responseString = String(data: data, encoding: .utf8) {
            completion(responseString)
        } else {
            print("Error: Unable to convert data to string")
            completion(nil)
        }
    }
    task.resume()
  }
}
