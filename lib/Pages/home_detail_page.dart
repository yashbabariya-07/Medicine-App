import 'package:flutter/material.dart';
import 'package:new_applicaton/Pages/home_page.dart';
import 'package:new_applicaton/models/catalog.dart';
import 'package:new_applicaton/widgets/themes.dart';


class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) :
        assert(catalog!= null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  ButtonBar(
        alignment: MainAxisAlignment.spaceAround,
        children: [
          Text("\u{20B9}${catalog.price}",
            textScaleFactor: 1.8,),
          Buy(catalog: catalog)
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SafeArea(
          //bottom: false,
          child: Column(
            children:[
            Hero(
              tag: Key(catalog.id.toString()),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  height: 300,
                  width: 300,
                  child: Image.network(catalog.image,
                    fit: BoxFit.fill,))),
              Divider(),
              Expanded(
                  child: Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.white,
                  width: 400,
                  child: Column(
                    children: [
                      Text(catalog.name,
                        style: TextStyle(fontSize:25),
                    ),
                    Text(catalog.description,
                      textScaleFactor: 0.9,),
                      Container(
                        padding: EdgeInsets.fromLTRB(3, 35 ,3, 2),
                          child: Text(catalog.Info)),
                    ],
                  ),))
          ],
          ),
        ),
      ),
    );
  }
}
