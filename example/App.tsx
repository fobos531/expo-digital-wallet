import { StyleSheet, Text, View } from "react-native";

import { ApplePayButton, ApplePayButtonStyle, ApplePayButtonType } from "expo-digital-wallet";

export default function App() {
  return (
    <View style={styles.container}>
      <Text>tu</Text>

      <ApplePayButton
        buttonType={ApplePayButtonType.ADD_MONEY}
        buttonStyle={ApplePayButtonStyle.AUTOMATIC}
        onPress={() => console.log("opaca")}
        style={{ height: 44, width: 300 }}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
    alignItems: "center",
    justifyContent: "center",
  },
});
