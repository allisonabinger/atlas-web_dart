// prints a string 3 trimes, then only the first 9 characters of a string
void main() {
  String str = "Holberton School";
  print(str * 3);
  print(str.substring(0, 9) + '\n');
}
