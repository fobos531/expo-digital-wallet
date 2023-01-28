import ExpoModulesCore
import Foundation
import UIKit
import PassKit

// This view will be used as a native component. Make sure to inherit from `ExpoView`
// to apply the proper styling (e.g. border radius and shadows).
class ExpoDigitalWalletView: ExpoView {
    let onButtonPress = EventDispatcher()
    
    
    var type: ButtonType = .buy
    var style: ButtonStyle = .whiteOutline
    var childView: PKPaymentButton?
    
    var needsUpdate = true
    
    
    var cornerRadius: Double = 4.0 {
        didSet {
            childView?.cornerRadius = cornerRadius
        }
    }
    
    func updateChildIfNeeded() {
        guard needsUpdate else {
            return
        }
        unmountChild()
        mountNewChild()
        needsUpdate = false
    }
    
    private func mountNewChild() {
        let newChildView = PKPaymentButton(paymentButtonType: type.toApplePayButtonType(), paymentButtonStyle: style.toApplePayButtonStyle())
        
        newChildView.cornerRadius = cornerRadius
        newChildView.translatesAutoresizingMaskIntoConstraints = false
        newChildView.addTarget(self, action: #selector(onTouchUp), for: .touchUpInside)
        
        addSubview(newChildView)
        childView = newChildView
        
        NSLayoutConstraint.activate([
            newChildView.topAnchor.constraint(equalTo: self.topAnchor),
            newChildView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            newChildView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            newChildView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }
    
    
    private func unmountChild() {
        childView?.removeTarget(self, action: #selector(onTouchUp), for: .touchUpInside)
        childView?.removeFromSuperview()
        childView = nil
    }
    
    @objc
    private func onTouchUp() {
        onButtonPress()
    }
    
}
