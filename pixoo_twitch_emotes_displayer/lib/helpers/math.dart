int gcd(int a, int b) {
  while (b != 0) {
    var remainder = a % b;
    a = b;
    b = remainder;
  }
  return a;
}

int lcm(int a, int b) {
  return (a * b) ~/ gcd(a, b);
}

// returns gained points by each T object
// last place in [list] is 1st place
Map<T, int> countPoints<T>(Iterable<T> list) {
  Map<T, int> points = {};
  Map<T, int> counters = {};
  for (T obj in list) {
    final pointsGained = counters.entries
        .where((element) => element.key != obj)
        .fold(1, (previousValue, element) => previousValue + element.value);
    
    points.update(obj, (value) => value + pointsGained, ifAbsent: () => pointsGained);
    counters.update(obj, (value) => value + 1, ifAbsent: () => 1);
  }

  return points;
}