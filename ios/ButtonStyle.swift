import PassKit
import ExpoModulesCore

enum ButtonStyle: Int, Enumerable {
    case white = 0
    case whiteOutline = 1
    case black = 3
    case automatic = 4
    
    func toApplePayButtonStyle () -> PKPaymentButtonStyle {
        return PKPaymentButtonStyle(rawValue: self.rawValue) ?? PKPaymentButtonStyle.white
    }
}
