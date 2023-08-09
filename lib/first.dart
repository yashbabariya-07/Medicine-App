import 'dart:js';
import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  //var _size = 200.0;
  // runApp(
  //  Center(
  //   child: Text('hello world'*
  //   //style: TextStyle(backgroundColor: Colors.white),
  //   textDirection: TextDirection.ltr,),
  // ),
  // );

    runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(appBar: AppBar(
          // body: Text("""hello  how are you
          //
          //              I am Finee
          //
          //            okyyy then."""),
          //title: Container(
          // width: 50,
          // child: Image.network(
          //   'https://img.freepik.com/free-photo/top-view-background-beautiful-white-grey-brown-cream-blue-background_140725-72219.jpg'),),

          title: Text('App'),
          actions: [
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],
        ),
            drawer: Drawer(),
            // body: Column(
            //   children:[
            //     DefaultTextStyle(style: TextStyle(fontSize: 10, color: Colors.blue),
            //         child: Column(
            //           children:[
            //             Text('First'),
            //           Text('Second', style:TextStyle(fontSize: 20, color: Colors.amber),
            //           ),
            //           Text('Third'),
            //           ],
            //         ))
            //   ],
            // ))));

            // body: Center(
            //   child: Text.rich(
            //             TextSpan(
            //             text: 'First',
            //             style: TextStyle(fontSize: 30, color: Colors.deepOrange),
            //             children: <InlineSpan>[
            //             TextSpan(text:'Second',
            //                 style: TextStyle(fontSize: 20, color: Colors.lightBlue)),
            //               TextSpan(text:'Third',
            //                   style: TextStyle(fontSize: 10, color: Colors.green)),
            //           ],
            //
            // ))))));

            // body: Center(
            //   child: Container(
            //     child: Text(
            //       'Medicine',
            //       style: TextStyle(fontSize: 30),
            //     ),
            //         height: 250,
            //         width: 250,
            //         alignment: Alignment.center,
            //
            //     constraints: BoxConstraints.expand(),
            //     decoration: BoxDecoration(
            // color: Colors.amber,

            // border: Border.all(
            //   color: Colors.black,
            //   width: 5,
            // ),

            // borderRadius: BorderRadius.all(Radius.circular(20.0)),

            // boxShadow: [
            //   BoxShadow(
            //        blurRadius: 30.0,
            //    // color: Colors.black26,
            //        spreadRadius: 5.0,
            // offset: Offset(5.0,5.0))
            // ]


            // gradient: LinearGradient(
            //   begin: Alignment.centerRight,
            //   end: Alignment.centerLeft,
            //   colors: [Colors.green, Colors.blue,Colors.orange]
            // )
            // ),
            //),


            // body: Column(
            //   children: [
            //     Container(
            //       child: Text(
            //         'Jay Hind',
            //         style: TextStyle(fontSize: 20),
            //       ),
            //padding: EdgeInsets.all(10),
            //   height: 100,
            //   width: 150,
            //   color: Colors.deepOrange,
            //   alignment: Alignment.center,
            // ),


            // Container(
            //   child: Text(
            //     'Jay Bharaat',
            //     style: TextStyle(fontSize: 20),
            //   ),
            //   height: 100,
            //   width: 150,
            //padding: EdgeInsets.all(10),
            //   color: Colors.lightBlue,
            //   alignment: Alignment.center,
            // ),


            // Container(
            //   child: Text(
            //     'Jay Sardar',
            //     style: TextStyle(fontSize: 20),
            //   ),
            //   height: 100,
            //   width: 150,
            //   padding: EdgeInsets.all(10),
            //   color: Colors.lightGreen,
            //   alignment: Alignment.center,
            // ),

            //],

            //crossAxisAlignment: CrossAxisAlignment.stretch,

            //mainAxisAlignment: MainAxisAlignment.center,

            // body: Center(
            //   //alignment: Alignment(0.2,0.4),  //only for Align Widget
            // heightFactor: 2,
            //   widthFactor: 5,
            //   child: Container(
            //     height: 100,
            //       width: 100,
            //     color: Colors.amberAccent,
            //   )

            // body: Container(
            //   height: 100,
            //   width: 100,
            //
            //   child: Card(
            //     color: Colors.amberAccent,
            //     // shape: RoundedRectangleBorder(
            //     //   borderRadius: BorderRadius.circular(10.0),
            //       elevation: 10.0,
            //
            //     margin: EdgeInsets.all(15.0),
            //     shadowColor: Colors.red,
            //     ),

            // body: SingleChildScrollView(
            //   padding: EdgeInsets.all(50),
            //   //scrollDirection: Axis.horizontal,
            //   child: Column(
            //     children: [
            //       Container(
            //         // child: Padding(
            //         //   padding: EdgeInsets.all(50),
            //         //   child: Text('Yeeeh',
            //         //   style: TextStyle(fontSize: 30),),
            //         // ),
            //         height: 200,
            //         //width: 100,
            //         color: Colors.red,
            //       ),

            //     // Container(
            //     //   child: Padding(
            //         padding: EdgeInsets.all(50),
            //       //   child: Text('Yeeeh',
            //       //     style: TextStyle(fontSize: 30),),
            //       // ),
            //       height: 200,
            //       //width: 100,
            //       color: Colors.yellow,
            //     ),
            //   ],
            // ),

            // body: Center(
            //   child: Container(
            //     height: 100,
            //     width: 200,
            //     child: Placeholder(
            //       strokeWidth: 10,
            //       fallbackHeight: 10,
            //       fallbackWidth: 10,
            //     ),
            //     child: Column(
            //       children: [
            //         Flexible(child: Placeholder()),
            //         Flexible(child: Placeholder()),
            //       ],
            //     ),
            //   ),
            // ),

            // body: Center(
            //   child: TextButton.icon(
            //      // icon: Icon(Icons.access_alarm),
            //      // label: Text('NNNN'),
            //    // child: Text('Button'),
            //     onPressed: () {},
            //
            // )),
            //   print('pressed');
            // },
            // onLongPress: () {
            //   print('Longggg');
            // },

            // body: Center(
            //   child: Center(
            //     child: Directionality(
            //       textDirection: TextDirection.rtl,
            //       child: Image.asset('image/img.png',
            //       height: 500,
            //       width: 950,
            //       fit: BoxFit.contain,
            //       matchTextDirection: true,),
            //     ),
            //
            //   ),
            // ),

            // body: Center(
            //   child: Center(
            //     child: ElevatedButton(
            //       child: Text('Button'),
            //       onPressed: () {print('hyyy');},
            //       onLongPress: () {print('hello');},
            //     )
            //   )
            // ),

            // body: Center(
            //   child:Center(
            //     child: Icon(
            //       Icons.accessibility_outlined,
            //       size: 200,
            //     ),
            //   )
            // ),

            // body:Center(
            //   child: Center(
            //     child: IconButton(
            //       icon: Icon(Icons.account_box),
            //       iconSize: 100,
            //       tooltip: 'Admin',
            //       onPressed: () {},
            //       splashColor: Colors.yellow,
            //       highlightColor: Colors.red,
            //    )
            //   )
            // )

            // body: Center(
            //   child: Text('Button'),
            // ),
            // floatingActionButton: FloatingActionButton(
            //   child: Icon(
            //     Icons.add,
            //   ),
            //   onPressed: () {},
            //   highlightElevation: 60,
            // ),
            //   body: Center(
            //     child: Center(
            //     child: Column(
            //       children: [FlutterLogo(
            //         size: _size,
            //       //  style: FlutterLogoStyle.stacked,
            //        // curve: Curves.easeIn,
            //        // duration: Duration(seconds: 5),
            //       ),
            //       ElevatedButton(
            //           onPressed: (){
            //             setState((){
            //               _size = _size + 100.0;
            //               if(_size>500.0){
            //                 _size=200.0;
            //               }
            //             });
            //           },
            //           child: Text('Button'))],
            //     ),3
            //   ),
            //   ),


        )));

    // Container(
    // height: 200,
    // child: Text(''),
    // color: Colors.deepOrange,
    // ),
    // Container(
    //   height: 200,
    //   child: Text(''),
    //   color: Colors.red,
    // ),
    // Container(
    //   height: 200,
    //   child: Text(''),
    //   color: Colors.yellow,
    // ),
    // Container(
    //   height: 200,
    //   child: Text(''),
    //   color: Colors.lightBlue,
    // ),
    // Container(
    //   height: 200,
    //   child: Text(''),
    //   color: Colors.green,
    // ),
    // Container(
    //   height: 200,
    //   child: Text(''),
    //   color: Colors.purple,
    // ),

  }



