import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:new_applicaton/models/catalog.dart';
import 'dart:convert';
import 'package:new_applicaton/widgets/drawer.dart';
import 'package:new_applicaton/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String value="Application";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async{
    await Future.delayed(Duration(seconds: 5));
  final  Medicinejson = await rootBundle.loadString("assets/files/medicine.json");
  final  decodedData = jsonDecode(Medicinejson);
  var productsData = decodedData["products"];
  Medicine.items= List.from(productsData)
     .map<Item>((items)=>Item.fromMap(items))
  .toList();
  setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var Medicine;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.white,
        elevation:0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
            "Hamari Medicine",
          style: TextStyle(color:Colors.black),
        ),
      ),
    body: Padding(
      padding: const EdgeInsets.all(5),
      child: (Medicine.items != null && Medicine.items.isNotEmpty)? ListView.builder(
        itemCount: Medicine.items.length,
        itemBuilder: (context,index){
          return ItemWidget(item: Medicine.items[index],
          );
        },
      )
          :Center(
        child: CircularProgressIndicator(),
      )
    ),
        drawer: MyDrawer(),
  );
  }
}


