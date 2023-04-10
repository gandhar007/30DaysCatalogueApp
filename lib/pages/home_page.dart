import 'package:flutter/material.dart';
import 'package:catalouge/widgets/drawer.dart';
import 'package:catalouge/models/catalog.dart';
import 'package:catalouge/widgets/item_widget.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async
  {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
          child: (CatalogModel.items!=null && CatalogModel.items.isNotEmpty)? ListView.builder(
              itemCount: CatalogModel.items.length,
              itemBuilder: (context, index) => ItemWidget(
                item: CatalogModel.items[index],
              ),
          )
           : const Center(
            child: CircularProgressIndicator(),
          ),
        ),
        drawer: MyDrawer(),
    );
  }
}
