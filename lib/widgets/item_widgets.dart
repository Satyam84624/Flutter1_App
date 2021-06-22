import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item? item;

  const ItemWidget({Key? key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: StadiumBorder(),
      child: ListTile(
        onTap: () {
          print("${item?.name} pressed");
        },
        leading: Image.network(item?.image as String),
        title: Text(item?.name as String),
        subtitle: Text("${item?.desc}",textScaleFactor: 0.8),
        trailing: Text(
          "\$${item?.price}",
          textScaleFactor: 1.5,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
