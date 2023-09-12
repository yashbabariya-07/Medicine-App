import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_applicaton/Pages/home_detail_page.dart';
import 'package:new_applicaton/models/cart.dart';
import 'package:new_applicaton/models/catalog.dart';
import 'package:new_applicaton/utils/routes.dart';
import 'dart:convert';
import 'package:new_applicaton/widgets/drawer.dart';
import 'package:new_applicaton/widgets/item_widget.dart';
import 'package:new_applicaton/widgets/themes.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String value = "Application";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 5));
    final Medicinejson =
        await rootBundle.loadString("assets/files/medicine.json");
    final decodedData = jsonDecode(Medicinejson);
    var productsData = decodedData["products"];
    Medicine.items = List.from(productsData)
        .map<Item>((items) => Item.fromMap(items))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.shopping_cart),
        ),
        //   appBar: AppBar(
        //    actions: [
        //    Icon(Icons.search),
        //    Icon(Icons.more_vert),
        // ],),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(padding: EdgeInsets.all(10), child: MedicineHeader()),
                if (Medicine.items != null && Medicine.items.isNotEmpty)
                  MedicineList()
                else
                  Center(
                    child: CircularProgressIndicator(),
                  )
              ],
            ),
          ),
        ));
  }
}

class MedicineHeader extends StatelessWidget {
  const MedicineHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hamari Medicine's",
          textScaleFactor: 1.8,
          style: TextStyle(color: Colors.black),
        ),
        Text("Generic Products"),
      ],
    );
  }
}

class MedicineList extends StatelessWidget {
  const MedicineList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: Medicine.items.length,
        itemBuilder: (context, index) {
          final catalog = Medicine.items[index];
          return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeDetailPage(
                            catalog: catalog,
                          ))),
              child: MedicineItem(catalog: catalog));
        },
      ),
    );
  }
}

class MedicineItem extends StatelessWidget {
  final Item catalog;

  const MedicineItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(5),
            height: 120,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Hero(
                      tag: Key(catalog.id.toString()),
                      child: Container(

                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          width: 50,
                          child: Image.network(
                            catalog.image,
                            fit: BoxFit.fill,
                          ))),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        catalog.name,
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        catalog.description,
                        textScaleFactor: 0.5,
                        //style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      ButtonBar(
                        children: [
                          Text("\u{20B9}${catalog.price}"),
                          Buy(catalog: catalog)
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
        Divider(),
      ],
    );
  }
}

class Buy extends StatefulWidget {
  final Item catalog;

  const Buy({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  _BuyState createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isAdded = _cart.items.contains(widget.catalog) ?? false;
    return ElevatedButton(
      onPressed: () {
        if (!isAdded) {
          if(isAdded){
            isAdded= false;
          }else{
            isAdded = true;
          }
          final _catalog = Medicine();
          _cart.catalog = _catalog;
          _cart.add(widget.catalog);
          setState(() {});
        }
      },
      style: ButtonStyle(shape: MaterialStateProperty.all(StadiumBorder())),
      child: isAdded ? Icon(Icons.done) : Icon(Icons.add_shopping_cart),
    );
  }
}
