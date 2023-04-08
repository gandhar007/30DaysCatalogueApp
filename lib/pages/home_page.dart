import 'package:flutter/material.dart';
import 'package:catalouge/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
              "Catalog App",
            style: TextStyle(
              color: Colors.black
            ),
          ),
        ),
        body: Center(
          child: Text("FLUTTER!!")
        ),
        drawer: MyDrawer(),
    );
  }
}
