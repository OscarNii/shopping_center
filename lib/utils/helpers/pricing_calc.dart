class TPricingCalc {
  static double calculatePrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  
  }

  //Shipping Cost Calc
  //
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

//Tax Calc
//
static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }


  static double getTaxRateForLocation(String location) {
    if (location == 'Accra') {
      return 0.05;
    } else if (location == 'CapeCoast') {
      return 0.1;
    } else {
      return 0.15;
    }
  }
  static double getShippingCost(String location) {
    if (location == 'Accra') {
      return 10.0;
    } else if (location == 'CapeCoast') {
      return 5.0;
    } else {
      return 15.0;
    }
  }

}
