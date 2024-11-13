void main(List<String> args) {
  List<int> gradeList = [70, 65, 50, 90, 85, 80, 75, 90, 95];

  int result1 = findMaxGrade(gradeList);
  int result2 = findMinGrade(gradeList);

  print("maksimal qiymat : $result1");
  print("minimal qiymat : $result2");
  print("\n");

  SortListByAvarage(gradeList);
}

int findMaxGrade(List<int> grades) {
  int maxGrade = grades.reduce((son1, son2) => (son1 > son2) ? son1 : son2);
  return maxGrade;
}

int findMinGrade(List<int> grades) {
  int minGrade = grades.reduce((son1, son2) => (son1 < son2) ? son2 : son1);

  return minGrade;
}

void SortListByAvarage(List<int> grades) {
  List<int> upAvarage = [];
  List<int> downAvarage = [];
  double avarageValue =
      (grades.reduce((son1, son2) => son1 + son2) / grades.length);

  grades.forEach((son) =>
      (son > avarageValue) ? upAvarage.add(son) : downAvarage.add(son));
  String yaxlitlanganSon = avarageValue.toStringAsFixed(2);

  print("ortacha ball : $yaxlitlanganSon");
  print("o'rtacha ball dan baland ball lar ");
  print(upAvarage);
  print("\n");

  print("o'rtacha ball dan kichik bo'lgan ballar");
  print(downAvarage);
}
