import 'dart:io';

class Product {
  final int id;
  final String name;
  final int price;
  int qty = 1;
  Product({
    required this.id,
    required this.name,
    required this.price,
    this.qty = 1,
  });

  factory Product.factory({required Map data}) {
    return Product(id: data['id'], name: data['name'], price: data['price']);
  }
  static List<Map<String, dynamic>> allproduct = [
    {
      'id': 1,
      'name': "vivo",
      'price': 1000,
    },
    {
      'id': 2,
      'name': "golgappa",
      'price': 20,
    },
    {
      'id': 3,
      'name': "ipad",
      'price': 2000,
    },
    {
      'id': 4,
      'name': "macbook",
      'price': 90000,
    },
    {
      'id': 5,
      'name': "gaming pc",
      'price': 10000,
    },
    {
      'id': 6,
      'name': "earbuds",
      'price': 9999,
    },
    {
      'id': 7,
      'name': "puff",
      'price': 20,
    },
    {
      'id': 8,
      'name': "sandwich",
      'price': 50,
    },
    {
      'id': 9,
      'name': "badam",
      'price': 1000,
    },
    {
      'id': 10,
      'name': "pista ",
      'price': 1000,
    },
  ];
}

class customer {
  final int id;
  final String name;
  final int contact;
  int Total = 0;
  List<Product> cart = [];
  customer({required this.id, required this.name, required this.contact}) {
    int choice;

    do {
      print("1 for add product.");
      print("2 for remove product.");
      print("3 for EXIT.");
      stdout.write("Enter your choice : ");
      choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 1:
          Product.allproduct.forEach((e) {
            print("${e['id']}\t${e['name']}\t${e['price']}");
          });
          stdout.write("Enter product number to add your cart : ");
          int n = int.parse(stdin.readLineSync()!);
          stdout.write("Enter quantity :");
          int q = int.parse(stdin.readLineSync()!);

          Product p = Product.factory(data: Product.allproduct[n - 1]);
          p.qty = q;
          cart.add(p);
          break;
        case 2:
          stdout.write("Enter product number to Remove in your cart : ");
          int n = int.parse(stdin.readLineSync()!);
          cart.removeAt(n);
          break;
        case 3:
          break;
        default:
          print("Enter valid Number!!");
          break;
      }
    } while (choice != 3);
    cart.forEach((e) {
      Total += (e.qty * e.price);
    });
    if (Total >= 500 && Total < 1500) {
      print("your bill is ${(Total * 10) / 100}");
    } else if (Total >= 1500 && Total < 3500) {
      print("your bill is ${(Total * 20) / 100}");
    } else if (Total >= 3500 && Total < 6500) {
      print("your bill is ${(Total * 25) / 100}");
    } else {
      print("your bill is ${(Total * 30) / 100}");
    }
  }
}
