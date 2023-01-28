import React from "react";
import { StyleProp, ViewProps, ViewStyle } from "react-native";

import ExpoApplePayButton from "./ExpoApplePayButton";
import { ApplePayButtonStyle, ApplePayButtonType } from "./ExpoDigitalWallet.types";

export declare type ApplePayButtonProps = ViewProps & {
  /**
   * The method to call when the user presses the button.
   */
  onPress: () => void;
  /**
   * The type of button text to display.
   */
  buttonType: ApplePayButtonType;
  /**
   * The Apple-defined color scheme to use to display the button.
   */
  buttonStyle: ApplePayButtonStyle;
  /**
   * The border radius to use when rendering the button. This works similarly to
   * `style.borderRadius` in other Views.
   */
  cornerRadius?: number;
  /**
   * The custom style to apply to the button. Should not include `backgroundColor` or `borderRadius`
   * properties.
   */
  style?: StyleProp<Omit<ViewStyle, "backgroundColor" | "borderRadius">>;
};

export default function ApplePayButton({ onPress, ...restProps }: ApplePayButtonProps) {
  if (!ExpoApplePayButton) {
    if (__DEV__) {
      console.warn("'ApplePayButton' is not available.");
    }
    return null;
  }
  return <ExpoApplePayButton onButtonPress={onPress} {...restProps} />;
}
