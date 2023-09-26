void main(List<String> args) {
  //* whereType<>() *//

  var mixList = ['a', 2, 4, 5, 'jfd', 'd', 3.4];
  var num = mixList.whereType<String>();
  print(num);

  //* subList() *//

  // start is inclusive and end is exclusive
  var myList = [3, 5, 2, 6, 7, 8, 34, 223, 45, 22, 88];
  print(myList.sublist(3, 7));

  //* reversed *//

  var rev = [1, 2, 3, 4, 5, 6, 7];
  print(rev.reversed.toList());

  //* asMap() *//

  // Returns map representation of the List
  // The Key would be the indices and Value would be the corresponding elements of the list
  List<String> sports = ['Football', 'Cricket', 'Hockey', 'Baseball', 'Racing'];
  Map<int, String> map = sports.asMap();
  print(map);

  //* getRange() *//

  // Returns elements from a specified range Start to End in same order as in the given list
  // Start element is Inclusive but End element is Exclusive
  var rangeList = [1, 2, 3, 4, 5, 6, 7, 8];
  print(rangeList.getRange(1, 4).toList());

  //* firstWhere() *//

  // Returns the first element from  the list when the given condition is satisfied
  var firstList = [1, 5, 3, 7, 9, 2];
  var firstStringList = ['n', 'fg', 'dgdfg', 'dfgsfgfdgdf', '34'];
  print(
    firstStringList.firstWhere(
      (i) => i.length > 1,
    ),
  ); // returns the first element whose length is greater than 1
  print(
    firstList.firstWhere(
      (i) => i > 4,
    ),
  ); // returns the first element whose value is greater than 4

  //* lastWhere() *//

  // Returns the last element from the list if the condition is satisfied
  var lastList = [1, 4, 6, 7, 2, 8, 9];
  var lastStringList = ['n', 'fg', 'dgdfg', 'dfgsfgfdgdf', '34'];
  print(
    lastList.lastWhere(
      (i) => i > 4,
    ),
  );
  print(
    lastStringList.lastWhere(
      (i) => i.length > 2,
    ),
  );

  //* 
}
