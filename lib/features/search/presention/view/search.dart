import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/styel.dart';
import 'package:flutter_application_1/features/home/presention/view/widget/bestsellerlistview.dart';

import '../../../home/presention/view/widget/bestselleritemlisstview.dart';

class search extends StatelessWidget {
  const search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: bodysearch()),
    );
  }
}

class bodysearch extends StatelessWidget {
  const bodysearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        textfild(),
        SizedBox(
          height: 35,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Newset Books',
            style: styels.textStyle18,
          ),
        ),
        Expanded(child: Listviewserch())
      ],
    );
  }
}

class textfild extends StatelessWidget {
  const textfild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        decoration: InputDecoration(
            labelText: "search",
            suffixIcon:
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            enabledBorder: border(),
            focusedBorder: border()),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.white));

  }
}

class Listviewserch extends StatelessWidget {
  const Listviewserch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Icon(Icons.abc)//Bestselleritem(),

      );
    });
  }
}
