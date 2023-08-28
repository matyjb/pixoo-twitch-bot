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