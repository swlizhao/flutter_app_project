import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    let batteryChannel = FlutterMethodChannel.init(name: "samples.flutter.io/battery",
                                                   binaryMessenger: controller as! FlutterBinaryMessenger)
    batteryChannel.setMethodCallHandler({
        (call: FlutterMethodCall, result: FlutterResult) -> Void in
       if ("getBatteryLevel" == call.method) {
        self.receiveBatteryLevel(result: result);
       } else {
         result(FlutterMethodNotImplemented);
       }
      });
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }


  private  func receiveBatteryLevel(result: FlutterResult) {
      let device = UIDevice.current;
      device.isBatteryMonitoringEnabled = true;
        
        if (device.batteryState == UIDevice.BatteryState.unknown) {
        result(FlutterError.init(code: "UNAVAILABLE",
                                 message: "Battery info unavailable",
                                 details: nil));
      } else {
        result(Int(device.batteryLevel * 100));
      }
        
    }   
    
}

