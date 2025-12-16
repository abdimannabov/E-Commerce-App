class SPricingCalculatorP {
  /// -- Calculate price based on tax and shipping --
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // -- Calculate shipping cost based on location --
  static String calculateShippingCostString(
    double productPrice,
    String location,
  ) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// -- Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  /// -- Get tax rate based on location --
  static double getTaxRateForLocation(String location) {
    switch (location.toLowerCase()) {
      case 'us':
        return 0.07; // 7% tax
      case 'eu':
        return 0.20; // 20% tax
      case 'uk':
        return 0.15; // 15% tax
      case 'uz':
        return 0.10; // 10% tax
      default:
        return 0.0; // No tax
    }
  }

  /// -- Get shipping cost based on location --
  static double getShippingCost(String location) {
    switch (location.toLowerCase()) {
      case 'us':
        return 5.0; // $5 shipping
      case 'eu':
        return 10.0; // $10 shipping
      case 'uk':
        return 8.0; // $8 shipping
      case 'uz':
        return 7.0; // $7 shipping
      default:
        return 15.0; // $15 shipping for other locations
    }
  }
}
