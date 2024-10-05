
double calculateArea(double height, double base) {
  double area = (height * base) / 2;
  // converts to 2 dec places, then back to double
  return double.parse(area.toStringAsFixed(2));
}
