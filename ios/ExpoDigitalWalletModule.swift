import ExpoModulesCore

public class ExpoDigitalWalletModule: Module {
  public func definition() -> ModuleDefinition {
    
    Name("ExpoDigitalWallet")
    
    
    View(ExpoDigitalWalletView.self) {
      Events("onButtonPress")
      
      
      Prop("buttonType") { (view, type: ButtonType?) in
        let type = type ?? ButtonType.buy
        
        if view.type != type {
          view.type = type
          view.needsUpdate = true
        }
      }
      
      Prop("buttonStyle") { (view, style: ButtonStyle?) in
        let style = style ?? .white
        
        if view.style != style {
          view.style = style
          view.needsUpdate = true
        }
      }
      
      
      Prop("cornerRadius") { (view, cornerRadius: Double) in
        view.cornerRadius = cornerRadius
      }
      
      OnViewDidUpdateProps { view in
        view.updateChildIfNeeded()
      }
      
    }
  }
}
