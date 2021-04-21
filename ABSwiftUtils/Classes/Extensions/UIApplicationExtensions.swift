//
//  UIApplicationExtensions.swift
//  ABSwiftUtils
//

#if canImport(Foundation)
import Foundation


// MARK: - AppVersion
extension UIApplication {

    class public func appBuildVersion() -> String {
        return Bundle.main.object(forInfoDictionaryKey: kCFBundleVersionKey as String) as! String
    }

    class public func appShortVersion() -> String {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    }

    class public func appVersion() -> String {
        let short = appShortVersion(), build = appBuildVersion()
        return short == build ? "\(short)" : "\(short)(\(build))"
    }

}


// MARK: - UIViewController
extension UIApplication {

    class public func topViewController(
        baseController: UIViewController? = UIApplication.shared.keyWindow?.rootViewController
    ) -> UIViewController? {
        if let tab = baseController as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(baseController: selected)
            }
        }

        if let nav = baseController as? UINavigationController {
            return topViewController(baseController: nav.visibleViewController)
        }

        if let presented = baseController?.presentedViewController {
            return topViewController(baseController: presented)
        }

        return baseController
    }

}


#endif

