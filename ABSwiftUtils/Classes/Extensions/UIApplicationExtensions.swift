//
//  UIApplicationExtensions.swift
//  ABSwiftUtils
//

#if canImport(Foundation)
import Foundation


// MARK: - Character
extension UIApplication {

    class func topViewController(
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

