import 'package:firebase_practise/utils/animation.dart';
import 'package:firebase_practise/view/login.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  final _registerglobalkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final _screenheight = MediaQuery.of(context).size.height;
    final _screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffD0E7DD),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  color: Color(0xff7DCEAE),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 7,
                      blurRadius: 7,
                      offset: Offset(2, 2), // changes position of shadow
                    ),
                  ],
                ),
                height: _screenheight / 1.9,
                width: _screenwidth / 1.2,
                // color: Color(0xff7DCEAE),
                child: Form(
                  key: _registerglobalkey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: _screenheight / (_screenwidth / 10),
                      ),
                      Text(
                        "REGISTRATION",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                      SizedBox(
                        height: _screenheight / (_screenwidth / 10),
                      ),
                      Container(
                        width: _screenwidth / 1.5,
                        padding: EdgeInsets.only(left: 30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintStyle:
                                  TextStyle(fontSize: 18.0, color: Colors.grey),
                              border: InputBorder.none,
                              hintText: 'Email'),
                        ),
                      ),
                      SizedBox(
                        height: _screenheight / (_screenwidth / 7),
                      ),
                      Container(
                        width: _screenwidth / 1.5,
                        padding: EdgeInsets.only(left: 30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintStyle:
                                  TextStyle(fontSize: 18.0, color: Colors.grey),
                              border: InputBorder.none,
                              hintText: 'Username'),
                        ),
                      ),
                      SizedBox(
                        height: _screenheight / (_screenwidth / 7),
                      ),
                      Container(
                        width: _screenwidth / 1.5,
                        padding: EdgeInsets.only(left: 30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintStyle:
                                TextStyle(fontSize: 18.0, color: Colors.grey),
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _screenheight / (_screenwidth / 7),
                      ),
                      Container(
                        width: _screenwidth / 1.5,
                        padding: EdgeInsets.only(left: 30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: TextFormField(
                          obscureText: true,
                          // keyboardType: InputTy,
                          decoration: InputDecoration(
                            hintStyle:
                                TextStyle(fontSize: 18.0, color: Colors.grey),
                            border: InputBorder.none,
                            hintText: 'Confirm Password',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _screenheight / (_screenwidth / 2),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: _screenheight / (_screenwidth / 2),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(createRoute(Login()));
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: _screenheight / (_screenwidth / 10),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 7.0,
                              fixedSize:
                                  Size(_screenwidth / 3, _screenheight / 15),
                              shape: StadiumBorder(),
                              primary: Colors.white),
                          onPressed: () {},
                          child: Text(
                            'Register',
                            style: TextStyle(color: Color(0xff7DCEAE)),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
