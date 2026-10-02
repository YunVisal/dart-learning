import 'dart:io';

void main() {
  stdout.write("What is your name? ");
  String name = stdin.readLineSync() ?? "";

  if (name.isEmpty) {
    print("Please enter your name");
    return;
  }

  stdout.write("How old are you? ");
  int? age = int.tryParse(stdin.readLineSync() ?? "");

  if (age == null) {
    print("Please enter your age");
    return;
  }

  print("Hello, $name!");
  print("Next year you will be ${age + 1}");
}
