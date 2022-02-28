import 'package:flutter/material.dart';
import 'package:lab03_shoppingstore/components/item_tile.dart';
import 'package:lab03_shoppingstore/data.dart';
import 'cart.dart';

class Home extends StatelessWidget {
  static const String routeName = '/';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Store'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Cart.routeName);
              },
              icon: const Icon(
                Icons.shopping_cart,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: storeItems.length,
              itemBuilder: (context, index) {
                return ItemTile(
                  item: storeItems.elementAt(index),
                );
              }),
        ),
        );
  }
}
