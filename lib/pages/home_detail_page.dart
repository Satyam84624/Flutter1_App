import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import "package:velocity_x/velocity_x.dart";

class HomeDetailPage extends StatelessWidget {
  final Item? catalog;

  const HomeDetailPage({Key? key, @required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyThemes.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog?.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    MyThemes.darklBluishColor,
                  ),
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  ),
                ),
                child: "Buy".text.make()).wh(100, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: 'image',
              child: Image.network(catalog?.image as String),
            ).h32(context),
            Expanded(
                child: VxArc(
                    height: 30,
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                    child: Container(
                      color: Colors.white,
                      width: context.screenWidth,
                      child: Column(
                        children: [
                          "${catalog?.name}"
                              .text
                              .xl4
                              .color(MyThemes.darklBluishColor)
                              .bold
                              .make(),
                          "${catalog?.desc}".text.xs.light.make(),
                          10.heightBox,
                        ],
                      ).py64(),
                    )))
          ],
        ),
      ),
    );
  }
}
