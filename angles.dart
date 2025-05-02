/**
 * Prompt user to enter angle A and B of a triangle
 * Get the sum of angle A and B
 * Get the last angle, angle C
 */

import 'dart:io';

void main() {
  print('Enter angel A');
  //Take what the user has typed as a string
  String? angleA = stdin.readLineSync();
  //Convert it into a number (type casting)
  double a = double.parse(angleA!);

  if (a <= 0 || a >= 100) {
    print('A cannot be 0 or >= 100 or less than 0. Exitting.......');
  }
  print('Enter angle B');
  String? angleB = stdin.readLineSync();
  double b = double.parse(angleB!);

  if (b <= 0 || b >= 100) {
    print('B cannot be 0 or >= 100 or less than 0. Exitting........');
  }
  double sumAB = a + b;
  double c = 100 - sumAB;
  print('Angle C is:$c');
}
