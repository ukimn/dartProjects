void main() {
  // Maps are key-value pairs in Dart is like struct or object in other languages
  // first: creating a map
  var userPreferences = {"theme": "dark", "fontSize": 14, "language": "en"};

  print(userPreferences); // Output: {theme: dark, fontSize: 14, language: en}

  // get a specific value by key
  print(userPreferences["theme"]); // Output: dark

  // show values
  print(userPreferences.values); // Output: (dark, 14, en)

  // show keys
  print(userPreferences.keys); // Output: (theme, fontSize, language)

  // show length
  print(userPreferences.length); // Output: 3

  // add a new key-value pair
  userPreferences["notifications"] = true;
  print(
    userPreferences,
  ); // Output: {theme: dark, fontSize: 14, language: en, notifications: true}

  // add many key-value pairs
  userPreferences.addAll({"autoSave": true, "backupFrequency": "daily"});
  print(userPreferences);

  // remove something from the map (nameOfTheKey)
  userPreferences.remove("theme");
  print(userPreferences);

  // check if a key exists
  print(userPreferences.containsKey("fontSize")); // Output: true

  // clear the map asdfasdfa
  userPreferences.clear();
  print(userPreferences); // Output: {}
}
