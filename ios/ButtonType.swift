import PassKit
import ExpoModulesCore

enum ButtonType: Int, Enumerable {
    case plain = 0
    case buy = 1
    case addMoney = 9
    case book = 6
    case checkout = 5
    case `continue` = 16
    case contribute = 14
    case donate = 4
    case inStore = 3
    case order = 11
    case reload = 8
    case rent = 12
    case setUp = 2
    case subscribe = 7
    case support = 13
    case tip = 15
    case topUp = 10
    
    func toApplePayButtonType () -> PKPaymentButtonType {
        return PKPaymentButtonType(rawValue: self.rawValue) ?? PKPaymentButtonType.buy
    }
}
