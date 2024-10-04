int fibonacci(int n) {
  if (n == 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  }

  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  int n = 6;
  print("Fibonacci number at position $n: ${fibonacci(n)}");
}
