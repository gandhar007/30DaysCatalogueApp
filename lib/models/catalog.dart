class CatalogModel
{
  static final items = [
    Item(
      id: 1,
      productName:"iPhone 12 Pro",
      desc:"Apple iPhone 12th Generation",
      price:999,
      color:"#33505a",
      image:"https://rukminim1.flixcart.com/image/832/832/kg8avm80/mobile/b/v/a/apple-iphone-12-pro-dummyapplefsn-original-imafwgbr45csnczy.jpeg?q=70",
    )
  ];
}

class Item
{
  final int id;
  final String productName;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.productName, required this.desc, required this.price, required this.color, required this.image});
}