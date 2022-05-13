import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widgets/bizim_row.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double height = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Icon(Icons.table_bar),
          backgroundColor: Colors.yellow,
          title: Column(
            children: [
              Text(
                "first",
                style: TextStyle(color: Colors.black),
              ),
              Text("Second")
            ],
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Card(
            color: Colors.grey.shade300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BizimRow(),
                BizimRow(),
                BizimRow(),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Tea"),
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg",
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
