import UIKit
import AdSupport

public enum GoogleAds {

    public static var googleConversionTrackingRemarketingKey = "GoogleConversionTrackingRemarketingKey"
    public static var googleConversionTrackingRemarketingTrackingID = ""

    static func baseRemarketURL() -> String {
        let bundleId = Bundle.main.bundleIdentifier ?? ""
        let remarketURL = "https://www.googleadservices.com/pagead/conversion/\(Self.googleConversionTrackingRemarketingTrackingID)/?bundleid=\(bundleId)&idtype=idfa&lat=0&remarketing_only=1"
        return remarketURL
    }

    public static func remarketAppToUser() {
        let remarketURL = baseRemarketURL()
        sendRemarketRequest(remarketURL)
    }

    static func sendRemarketRequest(_ request: String) {
        if let url = URL(string: request) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url)
            task.resume()
        }
    }

    public static func remarketOnAppVersionAndUsage() {
        let appVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") ?? ""
        let remarketURL = "\(baseRemarketURL())&appversion=\(appVersion)&usage_tracking_enabled=1&osversion=\(UIDevice.current.systemVersion)"
        sendRemarketRequest(remarketURL)
    }
}
