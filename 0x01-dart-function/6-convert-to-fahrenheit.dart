// accepts list of doubles, converts to fahrenheit
// conversion = (N * 9)/5 + 32
List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC
      .map((celsius) =>
          double.parse(((celsius * 9 / 5) + 32).toStringAsFixed(2)))
      .toList();
}
