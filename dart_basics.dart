// dart learnings from home
void main() {
  // Records and all possibilites with it
  var strRecord = (
    'a',
    'b',
    'records have no certain limits for values to be added in them',
    'you can add N numbers of values into a record'
  );
  print(strRecord);
  var intRecord = (
    1,
    2,
    4,
    54,
    33,
    76,
    34,
    75,
    88,
    59
  );
  var mixedRecord = (
    'first',
    a: 2,
    b: true,
    'last',
    true,
    isValid: false
  );

  // Record type annotation in a variable declaration, initialize it with a record expression.
  (
    String,
    int,
    bool
  ) myrecord = (
    'A string',
    123,
    true
  );

  var maprec = (
    aa: 122,
    bb: 33
  );
  ({
    int a,
    int b
  }) mapps = (
    a: 11,
    b: 12
  );
  print(mapps);

  print(mixedRecord.$2); // print(switchNum((1, 2)));
}

// (int, int) switchNum((int, int) nums) {
//   var (a, b) = nums;
//   return (b, a);
// }
