
<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

You can use this widget that can perform any enum selection on iOS and Android devices. Offers a simple aesthetic to your mobile app.

## Features

Select any enum with cupertino style

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

![ezgif-2-79bf9786a7](https://user-images.githubusercontent.com/13915117/181441046-35d17d06-ae34-492d-8142-3dee280fc62f.gif)

There is an example, you can check it
to `/example` folder. 

```dart
// You can generate your custom enum
enum Person {
  yakup,
  burak,
  ramazan,
}
//key: your custom enum, value: text that will appear on widgets
Map<Person, String> personMap = {
  Person.yakup: "YAKUP",
  Person.ramazan: "RAMAZAN",
  Person.burak: "BURAK"
};

DropDownCupertino<Person>(
              initialText: "Select a Person :",
              pickList: personMap,
              height: 160,
              onSelectedItemChanged: ((Person selected) {
                debugPrint("Selected text is: $selected");
              }),
            )
```

  - initialText: Text to be seen before opening the menu.
  - pickList: Dropdown type.
  - height: Height of dropdown menu visible in app.
  - onSelectedItemChanged: Prints the selected item to the console.

## Additional information

Working on more flexible for it.
# dropdown_cupertino
