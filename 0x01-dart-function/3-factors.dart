// recursive function to compute factorial of positive integer
int fact(int f) {
  if (f <= 0) {
    return 1;
  } else if (f == 1) {
    return 1;
  } else {
    return f * fact(f - 1);
  }
}
