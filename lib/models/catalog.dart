import 'package:new_applicaton/models/cart.dart';

class Medicine{

  static final catModel =  Medicine.internal();

  Medicine.internal();

  factory  Medicine() =>  catModel;

  static List<Item> items= [
      Item(
        id: 07,
        name: "Peracetamol",
        description: "Pain Killer",
        price: 15,
        color: "blue",
        image: "https://5.imimg.com/data5/SELLER/Default/2022/8/CW/BB/DS/129887935/paracetamol-tablets-500-mg-1000x1000.jpeg",
        Info: "Medicines are chemicals or compounds used to cure, halt, or prevent disease; ease symptoms; or help in the diagnosis of illnesses. Advances in medicines have enabled doctors to cure many diseases and save lives."
      )
  ];

   Item getById(int id) =>
      items.firstWhere((element) => element.id==id, orElse: null);

   Item getByPosition(int pos) => items[pos];
}


class Item{
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;
  final String Info;

  Item({required this.id, required this.name, required this.description, required this.price, required this.color, required this.image, required this.Info});

  factory Item.fromMap(Map<String,dynamic> map){
     return Item(
       id: map["id"],
       name: map["name"],
       description: map["description"],
       price: map["price"],
       color: map["color"],
       image: map["image"],
       Info: map["Info"]
     );
  }

  toMap() => {
    "id": id,
    "name": name,
    "description": description,
    "price": price,
    "color": color,
    "image": image,
    "Info": Info,
  };
}

