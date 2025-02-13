import HotwireNative
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let localPathConfigURL = Bundle.main.url(forResource: "path-configuration", withExtension: "json")!

        Hotwire.loadPathConfiguration(from: [
            .file(localPathConfigURL),
        ])
        
        
        Hotwire.registerBridgeComponents([
            ButtonComponent.self
        ])

        return true
    }
}
