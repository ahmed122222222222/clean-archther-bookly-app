import 'package:flutter/material.dart';

class appbarbooklydetails extends StatelessWidget {
  const appbarbooklydetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.clear_outlined),
          Icon(Icons.shopping_cart_outlined)
        ],
      ),
    ));
  }
}
