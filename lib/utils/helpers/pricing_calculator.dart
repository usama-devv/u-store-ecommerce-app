
class UPricingCalculator{
  /// Calculate Price based on tax and shipping

  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }
  /// Calculate Shipping Cost
  static String calculateShippingCost(double productPrice, String location){
   double shippingCost = getShippingCost(location);
   return shippingCost.toStringAsFixed(2);
  }
  /// Calculate Tax
  static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }
  static double getTaxRateForLocation(String location){
    ///LookUp the tax rate for given location from a tax database or API
    ///Return the appropriate tax rate
    return 0.10;
  }
  static double getShippingCost(String location){
    ///LookUp the shipping cost for given location using shipping rate API
    ///Calculate the shipping cost based on various factors like weight, distance
    return 5.00;
  }
  /// Sum all cart values and return total price
  // static double calculateCartTotal(CartModel cart){
  //   return cart.items.map((e) => e.price).fold(0,(previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}