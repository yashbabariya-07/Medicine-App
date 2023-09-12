import 'package:flutter/material.dart';
import 'package:new_applicaton/models/catalog.dart';

class ItemWidget extends StatelessWidget {

  final Item item;

  const ItemWidget({Key? key, required this.item}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.description),
        trailing: Text("\$#{item.price}",
            textScaleFactor: 1.5
        ),
      ),
    );
  }
}
