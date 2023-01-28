export enum ApplePayButtonStyle {
  /**
   * White button with black text.
   */
  WHITE = 0,
  /**
   * White button with a black outline and black text.
   */
  WHITE_OUTLINE = 1,
  /**
   * Black button with white text.
   */
  BLACK = 2,
  /**
   * White in dark mode and black in light mode
   */
  AUTOMATIC = 3,
}

export enum ApplePayButtonType {
  /**
   * Just a simple button with the Apple Pay logo.
   */
  PLAIN = 0,
  /**
   * Buy text - useful for product purchases.
   */
  BUY = 1,
  /**
   * "Add money" text - useful for adding money to a card, account, or payment system.
   */
  ADD_MONEY = 9,
  /**
   * Book text - useful for booking a hotel, flight, or other reservation.
   */
  BOOK = 6,
  CHECKOUT = 5,
  CONTINUE = 16,
  CONTRIBUTE = 14,
  DONATE = 4,
  IN_STORE = 3,
  ORDER = 11,
  RELOAD = 8,
  RENT = 12,
  SET_UP = 2,
  SUBSCRIBE = 7,
  SUPPORT = 13,
  TIP = 15,
  TOP_UP = 10,
}
