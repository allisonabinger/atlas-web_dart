// prints statement depending on cl arg value
void main(List<String> args) {
  var n = int.parse(args[0]);
  if (n < 0) {
    print('$n is negative');
  } else if (n == 0) {
    print('$n is zero');
  } else {
    print('$n is positive');
  }
}
