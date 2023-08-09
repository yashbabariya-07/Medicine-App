class Medicine{
  static List<Item> items= [
      Item(
        id: 07,
        name: "Peracetamol",
        description: "Pain Killer",
        price: 15,
        color: "blue",
        image: "https://5.imimg.com/data5/SELLER/Default/2022/8/CW/BB/DS/129887935/paracetamol-tablets-500-mg-1000x1000.jpeg",
      )
  ];
}


class Item{
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.description, required this.price, required this.color, required this.image});

  factory Item.fromMap(Map<String,dynamic> map){
     return Item(
       id: map["id"],
       name: map["name"],
       description: map["description"],
       price: map["price"],
       color: map["color"],
       image: map["image"],
     );
  }

  toMap() => {
    "id": id,
    "name": name,
    "description": description,
    "price": price,
    "color": color,
    "image": image
  };
}

