import 'dart:io';

import '1.dart';

void main() {
  stdout.write("Enter The Number of Customer : ");
  int Number = int.parse(stdin.readLineSync()!);
  List<customer> customer1 = List.generate(Number, (index) {
    stdout.write("Enter ID : ");
    int id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Name : ");
    String name = stdin.readLineSync()!;
    stdout.write("Enter Contact number : ");
    int contact = int.parse(stdin.readLineSync()!);

    return customer(id: id, name: name, contact: contact);
  });
  stdout.write("Search id number: ");
  int customerid = int.parse(stdin.readLineSync()!);
  customer1.forEach((e) {
    do {
      if (customerid == e.id) {
        print("${e.id}\t${e.name}\t${e.Total}");
      }
    } while (customerid == e.id);
  });
}
