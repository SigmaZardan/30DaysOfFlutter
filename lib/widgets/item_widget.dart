import 'package:flutter/material.dart';
import 'package:make_catalog/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          onTap: () => {print('${item.name} pressed')},
          leading: Image.asset(
            item.imageBanner,
            width: 70,
          ),
          title: Text(item.name),
          subtitle: Text(item.description),
          trailing: Text(
            "\$${item.price}",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.blue[500],
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
