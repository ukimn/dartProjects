void main() {
  for (int i = 1; i <= 12; i++) {
    print("_____________________ $i ______________________");
    for (int j = 0; j <= 12; j++) {
      int result = i * j;
      print("$i x $j = $result");
    }
  }
}

