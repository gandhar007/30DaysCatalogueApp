import 'package:flutter/material.dart';
import 'package:catalouge/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalogue App"),
        ),
        body: Center(
          child: Text("FLUTTER!!")
        ),
        drawer: MyDrawer(),
    );
  }
}
