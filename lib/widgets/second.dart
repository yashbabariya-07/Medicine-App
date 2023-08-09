import 'package:flutter/material.dart';

void main(){
  runApp(DemoApp());
}


class DemoApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return DemoAppState();
  }
}

class DemoAppState extends State<DemoApp>{
  var index=0;
  String ImgUrl='';

  List items=[
    'https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg',
  ];


  //final item = List<String>.generate(20, (i) => 'Item $i');
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('App'),
          actions: [
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                  ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset('image/user1.jpg',
                      width: 100,
                      height: 100,
                      ),
                    ),
                    Text('\n KAVI GHAYAL'),
                  ],
                ),),
                Column(
                  children: [
                    ListTile(
                      title: Text('Home'),
                      leading: Icon(Icons.home),
                    ),
                    ListTile(
                      title: Text('Account'),
                      leading: Icon(Icons.account_box_sharp),
                    ),
                    ListTile(
                      title: Text('Cart'),
                      leading: Icon(Icons.shopping_cart),
                    ),
                    ListTile(
                      title: Text('Loge Out'),
                      leading: Icon(Icons.logout),
                    ),
                  ],
                )
              ],
            ),
          ),

          // body: Center(
          //   child: ButtonBar(
          //     alignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       ElevatedButton(onPressed: () {},
          //       child: Text('ok'),),
          //       ElevatedButton(onPressed: () {},
          //         child: Text('Cancel'),),
          //     ],
          //   ),
          // ),
        // body: ListView(
          //     children: ListTile.divideTiles(
          //         context: context, tiles: [
          //       ListTile(
          //         title: Text('Suriya Prince'),
          //         subtitle: Text('Seller'),
          //         leading: Icon(Icons.person),
          //         trailing: Icon(Icons.add_call),
          //       ),
          //
          //       ListTile(
          //         title: Text('Utsav Dhameliya'),
          //         subtitle: Text('CA'),
          //         leading: Icon(Icons.person),
          //         trailing: Icon(Icons.add_call),
          //         selected: true,
          //       ),
          //
          //       ListTile(
          //         title: Text('Kavi Ghayal'),
          //         subtitle: Text('Writer'),
          //         leading: Icon(Icons.person),
          //         trailing: Icon(Icons.add_call),
          //         selectedTileColor: Colors.lightGreen,
          //       ),
          //
          //
          //     ]).toList()
          // )

          // body: ListView.builder(
          //   itemCount: 20,
          //   itemBuilder: (BuildContext context, int index){
          //     return ListTile(
          //       leading: Icon(Icons.person_add_alt_1),
          //       trailing: Icon(Icons.add_a_photo_rounded),
          //       title: Text('Person ${index}'),
          //     );
          //   },
          // ),
        
        // body: ListView.separated(
        //   itemCount: 20,
        //   itemBuilder: (BuildContext context, int index){
        //     return Card(
        //       color: Colors.deepOrange,
        //       child: Padding(
        //         child: Text('Person ${index+1}'),
        //         padding: EdgeInsets.all(40),
        //       ),
        //     );
        //   },
        //
        //   separatorBuilder: (BuildContext context, int index){
        //     return Card(
        //       color: Colors.deepOrange,
        //       child: Padding(
        //         child: Text('Human index'),
        //         padding: EdgeInsets.all(2),
        //       ),
        //     );
        //     return Divider();
        //   }
        // ),

        // body: ListView.custom(
        //     childrenDelegate: SliverChildBuilderDelegate(
        //         (BuildContext contex, int index){
        //           return Card(
        //                     color: Colors.deepOrange,
        //                     child: Padding(
        //                       child: Text(item[index]),
        //                       padding: EdgeInsets.all(2),
        //                     ),
        //                   );
        //         }
        //     ),
        // ),



        // body: Center(
        //   child: Container(
        //     child: Stack(
        //       clipBehavior: Clip.none,
        //       children: [
        //         Container(
        //           height: 250,
        //           width: 250,
        //           color: Colors.deepOrange,
        //         ),
        //         Container(
        //           height: 150,
        //           width: 200,
        //           color: Colors.yellow,
        //         ),
        //
        //         Positioned(
        //           bottom:0,
        //           right: 0,
        //         child: Container(
        //           height: 150,
        //           width: 150,
        //           color: Colors.lightGreen,
        //         ),
        //         ),
        //
        //         Positioned(
        //           bottom: 0,
        //           left: 0,
        //         child: Container(
        //           height: 50,
        //           width: 50,
        //           color: Colors.blue,
        //         ),
        //         ),
        //       ],
        //     ),
        //   )
        // ),

        //
        //      body: Center(
        //        child: IndexedStack(
        //          index: index,
        //          children: [
        //            Container(
        //              padding: EdgeInsets.all(20),
        //              child: Text(
        //                '0',
        //                style: TextStyle(fontSize: 100),
        //              ),
        //              color: Colors.deepOrange,
        //            ),
        //
        //            Container(
        //              padding: EdgeInsets.all(20),
        //              child: Text(
        //                '1',
        //                style: TextStyle(fontSize: 100),
        //              ),
        //              color: Colors.blue
        //            ),
        //
        //            Container(
        //              padding: EdgeInsets.all(20),
        //              child: Text(
        //                '2',
        //                style: TextStyle(fontSize: 100),
        //              ),
        //              color: Colors.green,
        //            ),
        //          ],
        //        ),
        //      ),
        //
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add),
        //   onPressed: () {
        //    setState(() {
        //      if(index == 2){
        //        index = 0;
        //      }
        //      else{
        //        index = index+1;
        //      }
        //    });
        //   },
        // ),

        // body: Center(
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.all(Radius.elliptical(10, 20)),
        //     child: Align(
        //      // alignment: Alignment.center,
        //       heightFactor: 1,
        //       widthFactor: 1,
        //       child: Image.asset('image/img.png',
        //         // height: 500,
        //         // width: 950,
        //         // fit: BoxFit.contain,
        //         // matchTextDirection: true,),
        //       ),
        //     ),
        //  ),
        //     ),

        // body: ClipOval(
        //   child: Container(
        //   child: Image.asset('image/img.png'),
        // ),
        // clipper: myClipper(),
        // ),

    //     body: Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 20),
    //       child: Center(
    //         child: TextField(
    //           keyboardType: TextInputType.emailAddress,
    //           decoration: InputDecoration(
    //             border: OutlineInputBorder(),
    //             hintText: "Email",
    //            icon: Icon(Icons.mail,
    //             //color: Colors.deepOrange,),
    //           ),
    //         ),
    //           //maxLines: 2,
    //           //obscureText: true,
    //           obscuringCharacter: '@',
    //           toolbarOptions: ToolbarOptions(
    //             copy: true,
    //             paste: true,
    //             cut: true,
    //             selectAll: true,
    //           ),
    //       ),
    //     ),
    //
    // )

        // body: Row(
        //   children: [
        //     Expanded(
        //       child: Container(
        //         //height: 200,
        //         width: 200,
        //         color: Colors.deepOrange,
        //       ),
        //     ),
        //     VerticalDivider(
        //       thickness: 10,
        //       color: Colors.green,
        //     ),
        //
        //     Expanded(
        //       child: Container(
        //         //height: 200,
        //         width: 200,
        //         color: Colors.lightBlue,
        //       ),
        //     ),
        //   ],
        // )

        // body: Builder(builder: (context){
        //   return Center(
        //     child: ElevatedButton(
        //       onPressed: () {
        //         final mesaage = SnackBar(
        //             content: Text("Bola Thaa Mtt Touch Krr"),
        //         action: SnackBarAction(
        //           label: 'Done',
        //           onPressed: () {},
        //         ),
        //         );
        //         ScaffoldMessenger.of(context).showSnackBar(mesaage);
        //       },
        //       child: Text("Bhai Touch Nahii Karna"),
        //     ),
        //   );
        // },),

        // body: Center(
        //   child: ClipRect(
        //     child: Container(
        //       width: 1000,
        //       color: Colors.lightBlue,
        //       child: InteractiveViewer(
        //         boundaryMargin: EdgeInsets.all(20),
        //           child: Image.asset('image/img.png')
        //       ),
        //
        //     ),
        //   ),
        // ),

        // body: Center(
        //   child: Column(
        //     children: [
        //       FutureBuilder(
        //           future: getdata(),
        //       builder: (context, snapshot){
        //             if(snapshot.connectionState==ConnectionState.waiting){
        //               return const Center(
        //                 child: CircularProgressIndicator(),);
        //             }else{
        //               return Center(
        //                 child: Image.network(ImgUrl),);
        //             }
        //       })
        //     ],
        //   ),
        // ),

        // body: Center(
        //   child: GridView(
        //     scrollDirection: Axis.horizontal,
        //     gridDelegate:
        //       SliverGridDelegateWithFixedCrossAxisCount(
        //           crossAxisCount: 3,
        //       mainAxisSpacing: 10),
        //     children: [
        //   Image.network('https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg'),
        //   Image.network('https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg'),
        //   Image.network('https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg'),
        //   Image.network('https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg'),
        //   Image.network('https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg'),
        //   Image.network('https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg'),
        //
        //    ],
        //   ),
        // ),

        // body: GridView.count(
        //   crossAxisSpacing: 1,
        //   mainAxisSpacing: 15,
        //   padding: EdgeInsets.all(5),
        //   crossAxisCount: 2,
        // children: List.generate(items.length,
        //         (index) => Image.network(items[index])),
        // ),

        body: GridView.builder(
          padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5),
            itemCount: items.length,
            itemBuilder: (context, index){
              return Image.network(
                items[index],
                height: 100,
                width: 100,
                fit: BoxFit.fill,
              );
            }),
    ));
  }

  //getdata() {}
}




// class myClipper extends CustomClipper<Rect>{
//   Rect getClip(Size size){
//     return Rect.fromLTWH(2, 5, 100, 200);
//   }
//
//   bool shouldReclip(oldClipper){
//     return false;
//   }
// }

// Future<String> getData() async{
//   await Future.delayed(const Duration(seconds: 2));
//
//    var ImgUrl = 'https://cdn.pixabay.com/photo/2023/07/27/13/37/cottage-8153413_1280.jpg';
//   return ImgUrl;
// }