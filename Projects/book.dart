import "dart:io";

MapEntry<String?, String?> addCommand() {
  print("enter the key: ");
  String? key = stdin.readLineSync();
  print("enter value of the key: ");
  String? value = stdin.readLineSync();

  return MapEntry(key, value);
}

void showBookData(Map<String?, String?> book) {
  if(book.isEmpty){
    print("Your list is empty try to add some values to see them from this command!");
  }
  int i = 0;
  for (var entry in book.keys) {
    i++;
    print("$i)$entry: ${book[entry]}}}");
  }
}

Map<String?, String?> deleteAnEntry(String? key, Map<String?, String?> book) {
  var newMap = Map<String?, String?>.from(book);
  newMap.remove(key);

  return newMap;
}

Map<String?, String?> editAnEntry(
  String? key,
  Map<String?, String?> book,
  String? newValue,
) {
  var newMap = Map<String?, String?>.from(book);
  newMap[key] = newValue;

  return newMap;
}

void main() {
  Map<String?, String?> contactBook = {};
  while (true) {
    print(
      "What is the command you need to do (add, delete, show, edit, exit): ",
    );
    String? command = stdin.readLineSync();
    String? choosedCommand = command?.toLowerCase();

    if (choosedCommand == "add") {
      MapEntry<String?, String?> entry = addCommand();
      contactBook[entry.key] = entry.value;
      print("Contact Added successfully");
    } else if (choosedCommand == "delete") {
      showBookData(contactBook);
      print("Enter the key to delete(Warining it is case sensitive): ");
      String? key = stdin.readLineSync();
      contactBook = deleteAnEntry(key, contactBook);
      print("Key has been deleted Successfully");
    } else if (choosedCommand == "edit") {
      showBookData(contactBook);
      print("Enter key you need to edit(case sensitive): ");
      String? key = stdin.readLineSync();
      print("Enter the new Value: ");
      String? newValue = stdin.readLineSync();
      contactBook = editAnEntry(key, contactBook, newValue);
      print("Contact edited Successfully!");
    } else if (choosedCommand == "show") {
      showBookData(contactBook);
    } else if (choosedCommand == "exit") {
      print("Program ended!");
      exit(0);
    } else {
      print("Invalid Command! please try again");
    }
  }
}
