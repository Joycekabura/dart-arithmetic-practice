/**
 * Prompt the user to enter age
 * Determine whether the user is underage or an adult
 */

import 'dart:io';

void main() {
  print('Enter age');
  //Reading the age is a string
  String? userAge = stdin.readLineSync();
  //Converting the age to a number
  int age = int.parse(userAge!);
  if (age < 18) {
    print('You are a child');
  } else if (age >= 18 && age <= 35) {
    print('You are a youth');
  } else if (age > 35) {
    print('You are an Unc');
  }
}
