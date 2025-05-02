/**
 * Prompt user to give the hypotenuse and side A of a triangle
 * determine side B of the triangle
 */

import 'dart:io';
import 'dart:math';

void main() {
  print('Enter the hypothenuse');
  String? userH = stdin.readLineSync();
  double h = double.parse(userH!);

  if (h <= 0) {
    print('Hypotenuse cannot be 0 or less than 0');
  }

  print('Enter length of side B');
  String? userB = stdin.readLineSync();
  double b = double.parse(userB!);

  if (b <= 0) {
    print('Length b cannot be 0 or less than 0');
  }

  double a = sqrt(pow(h, 2) - pow(b, 2));

  print('Length of side A:$a');
}
