import 'package:flutter/material.dart';
import 'package:new_applicaton/utils/routes.dart';

class LoginPage extends StatefulWidget {
 bool changeButton=false;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.network("https://uxdt.nic.in/wp-content/uploads/2021/01/pradhan-mantri-jan-aushadhi-logo-01.jpg?x91531",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome Customer!!!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 30),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "This Filed Is Not Empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot empty ";
                          }
                          else if (value.length < 6) {
                            return "Password Must Be Atleast 6 Word";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Mail Id",
                          labelText: "E-Mail Id",
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      Material(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(
                            changeButton ? 30 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            // color: Colors.amberAccent,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                              Icons.done,
                              color: Colors.white,)
                                : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),
                            ),

                          ),
                        ),
                      ),
                      // ElevatedButton(
                      //     child:Text("Login"),
                      //     style: TextButton.styleFrom(),
                      //   onPressed: (){
                      //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      // ),
                    ],

                  ),

                ),

              ],

            ),
          ),
        ));
  }
}