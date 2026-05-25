void main() {
  // Lists in Dart (Arrays)

  // First: Creating a list
  var myList = [1, 2, 3, 4];
  print(myList); // Output: [1, 2, 3, 4]

  // Selecting an element from the list
  print(myList[0]); // Output: 1

  // Second: Change An Item
  myList[0] = 10;
  print(myList); // Output: [10, 2, 3, 4]

  // Third: Create an empty list
  var emptyList = [];
  print(emptyList); // Output: []

  // Add to empty List
  emptyList.add(5);
  print(emptyList); // Output: [5]

  // Adding multiple items to a list
  emptyList.addAll([3, 4, 5]);
  print(emptyList); // Output: [5, 3, 4, 5]

  // Inserting an item at a specific index (position, item)
  myList.insert(0, 10);
  print(myList); // Output: [10, 10, 2, 3, 4]

  // Inserting many items at a specific index (position, items)
  myList.insertAll(0, [20, 40]);
  print(myList);

  // Also you can make your list mixed with different types of data
  var mixedList = [1, "John", true];
  print(mixedList); // Output: [1, "John", true]

  // remove items from a list
  mixedList.remove("John");
  print(mixedList); // Output: [1, true]

  // remove item at a specific index
  mixedList.removeAt(0);
  print(mixedList); // Output: [true]
}
