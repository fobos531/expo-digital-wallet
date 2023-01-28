import { requireNativeViewManager } from "expo-modules-core";
import { Platform } from "react-native";

let ExpoApplePayButton: any;

if (Platform.OS === "ios") {
  ExpoApplePayButton = requireNativeViewManager("ExpoDigitalWallet");
}

export default ExpoApplePayButton;
