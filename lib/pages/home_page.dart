import 'package:flutter/material.dart';
import 'package:catalouge/widgets/drawer.dart';
import 'package:catalouge/models/catalog.dart';
import 'package:catalouge/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(5, (index) => CatalogModel.items[0]);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
              "Catalog App",
            style: TextStyle(
              color: Colors.black
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
              itemCount: dummyList.length,
              itemBuilder: (context, index)
            {
              return ItemWidget(
                item: dummyList[index],
              );
            }
          ),
        ),
        drawer: MyDrawer(),
    );
  }
}
