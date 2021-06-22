class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        color: "#33505a",
        price: 999,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUi8RsYnaXfP_Nyl8H2yyGn6ulWYWaqwL4QT_ntWe5zSRy-wWtM4SkhC6VCEOR-6AOlPONTh8&usqp=CAc")
  ];
}

class Item {
  final int? id;
  final String? name;
  final String? desc;
  final num? price;
  final String? color;
  final String? image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
