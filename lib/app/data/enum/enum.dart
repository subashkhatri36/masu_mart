enum priceStatus {
  PRICE_RISE,
  PRICE_DOWN,
  PRICE_NETURAL,
}

class EnumConvert {
  priceStatus convertStringTOEnum(String value) {
    switch (value.toLowerCase()) {
      case 'rise':
        return priceStatus.PRICE_RISE;
        break;
      case 'down':
        return priceStatus.PRICE_DOWN;
        break;
      default:
        return priceStatus.PRICE_NETURAL;
        break;
    }
  }

  String convertEnumToString(priceStatus value) {
    switch (value) {
      case priceStatus.PRICE_RISE:
        return 'rise';
        break;
      case priceStatus.PRICE_DOWN:
        return 'down';
        break;
      default:
        return 'netural';
        break;
    }
  }
}
