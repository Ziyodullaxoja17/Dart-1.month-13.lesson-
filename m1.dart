void main(List<String> args) {
  List<String> colors = ['blue', 'red', 'green', 'red', 'yellow', 'blue'];

  Map result = findNumberColor(colors);
  print(result);

  List sortedlist = sortByLetter(colors);
  print(sortedlist);
}

List<String> sortByLetter(List<String> list) {
  list.sort();
  return list;
}

Map<String, int> findNumberColor(List<String> colors) {
  Map<String, int> mapColor = {};

  for (var color in colors) {
    if (mapColor.containsKey(color)) {
      mapColor[color] = mapColor[color]! + 1;
    } else {
      mapColor[color] = 1;
    }
  }

  return mapColor;
}
