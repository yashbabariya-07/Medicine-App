import 'package:flutter/material.dart';
import 'package:new_applicaton/models/cart.dart';
import 'package:new_applicaton/widgets/themes.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Cart"),
      ),
      body: Column(
        children: [
          _CartList(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 100,
      child: Row(

        children: [SizedBox(
          width: 50,
        ),
          Text("\u{20B9}${_cart.totalPrice}", textScaleFactor: 2,),
        Container(width: 150),
        ElevatedButton(onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Not Supported")));
        },
            style: ButtonStyle(
                shape: MaterialStateProperty.all(StadiumBorder())
            ),
        child: Text("Buy"))],
      ),
    );
  }
}

class _CartList extends StatefulWidget {

  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: _cart.items.isEmpty? Center(child: Text("Nothing In Cart")):
            ListView.builder(
            itemCount: _cart.items?.length,
            itemBuilder: (context,index)=>ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(icon: Icon(Icons.remove_circle_outline),
                onPressed: (){
                _cart.remove(_cart.items[index]);
                setState(() {});
                },),
              title: Text(_cart.items[index].name),
            ),
            ),
    );
  }
}


