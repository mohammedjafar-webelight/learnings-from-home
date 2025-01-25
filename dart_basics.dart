// dart learnings from home
void main() {
  print(switchNum((1, 2)));
}

(int, int) switchNum((int, int) nums) {
  var (a, b) = nums;
  return (b, a);
}
