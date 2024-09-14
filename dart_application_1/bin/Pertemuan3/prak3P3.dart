void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21) break;
    else if (index > 15 && index < 22) continue;
    print(index);
  }
}
