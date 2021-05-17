double calculateProductPrice(
    bool bone, bool skin, double price, double boneless, double skinless) {
  if (bone && skin) {
    return price + boneless + skinless;
  } else if (bone) {
    return price + boneless;
  } else if (skin) {
    return price + skinless;
  } else
    return price;
}
