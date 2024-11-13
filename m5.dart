void main() {
  List<Map<String, dynamic>> odamlar = [
    {'ismi': 'Ali', 'yoshi': 25, 'xohish': 'Kitob oqish'},
    {'ismi': 'Vali', 'yoshi': 19, 'xohish': 'Futbol oynash'},
    {'ismi': 'Sami', 'yoshi': 30, 'xohish': 'Kitob oqish'},
    {'ismi': 'Umar', 'yoshi': 22, 'xohish': 'Shahmat oynash'},
    {'ismi': 'Hasan', 'yoshi': 18, 'xohish': 'Futbol oynash'},
    {'ismi': 'Karim', 'yoshi': 28, 'xohish': 'Musiqa tinglash'},
  ];

  odamlar.sort((a, b) => a['yoshi'].compareTo(b['yoshi']));
  print('Yoshi bo\'yicha tartiblangan odamlar:');
  odamlar.forEach((odam) {
    print('${odam['ismi']}, Yosh: ${odam['yoshi']}, Xohish: ${odam['xohish']}');
  });

  Map<String, List<String>> guruhlar = {};
  for (var odam in odamlar) {
    String xohish = odam['xohish'];
    String ismi = odam['ismi'];

    if (guruhlar.containsKey(xohish)) {
      guruhlar[xohish]?.add(ismi);
    } else {
      guruhlar[xohish] = [ismi];
    }
  }

  print('xohish boyicha guruhlar va ulardagi odamlar soni:');
  guruhlar.forEach((xohish, odamlar) {
    print('$xohish: ${odamlar.length} odam');
  });
}
