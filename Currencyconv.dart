import 'dart:io';

void main() {
  print("Enter the amount you want to convert in Naira : ");

  var num = stdin.readLineSync();
  double num1 = double.parse(num!);

  double price = 1500.00;
  double total = num1 / price;
  print("The amount in Dollars is #$total");
}
