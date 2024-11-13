void main(List<String> args) {
  List<double> priceProduct = [200, 550, 700, 300, 800];

  List<double> result1 = filtetFunction(priceProduct);
  print(result1);

  print("\n");

  double result2 = findAvarage(priceProduct);
  print(result2);
}

List<double> filtetFunction(List<double> prices) {
  var listfiltered = prices.where((price) => checkedfunc(price)).toList();

  return listfiltered;
}

bool checkedfunc(price) {
  if (price >= 500) {
    return true;
  } else {
    return false;
  }
}

double findAvarage(List<double> prices) {
  double totalValue = prices.reduce((son1, son2) => son1 + son2);

  double result = totalValue / prices.length;

  return result;
}
