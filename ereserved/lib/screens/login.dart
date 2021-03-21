import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .1,
              width: double.infinity,
              child: Icon(Icons.book),
              color: Colors.brown,
            ),
            Center(
              child: Text('ĐĂNG NHẬP',
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 40,
                      fontFamily: 'Segoe UI',
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w800)),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: .1, color: Colors.brown)),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.supervised_user_circle_sharp),
                        labelText: 'Tên đăng nhập',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                BorderSide(color: Colors.grey, width: .1))),
                  ),
                  Container(
                    height: 10,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Mật khẩu',
                        prefixIcon: Icon(Icons.vpn_key),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(255, 255, 255, .1),
                              width: .1,
                            ))),
                  ),
                  InkWell(
                    child: Text('Quên mật khẩu'),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: Text('Đăng nhập'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 10,
            ),
          ],
        ),
      ),
    ));
  }
}
