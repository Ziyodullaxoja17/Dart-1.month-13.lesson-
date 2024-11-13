void main(List<String> args) {
  Map<String, int> Products = {
    "Product A": 150,
    "Product B": 200,
    "Product C": 50,
    "Product D": 400
  };

  Map<String, int> result1 = FindOverNumber(Products, 200);
  print(result1);
  print('\n');

  Map<String, dynamic> result2 = sortByValue(Products);
  print(result2);
}

Map<String, int> FindOverNumber(Map<String, int> products, int number) {
  Map<String, int> result = {};
  products.forEach((key, value) {
    if (value >= number) {
      result[key] = value;
    }
  });
  return result;
}

Map<String, int> sortByValue(Map<String, int> products) {
  Map<String, int> sortedMap = Map.fromEntries(
      products.entries.toList()..sort((a, b) => a.value.compareTo(b.value)));

  return sortedMap;
}
