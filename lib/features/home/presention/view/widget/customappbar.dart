import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/imagedata.dart';
import 'package:flutter_application_1/core/utils/router.dart';
import 'package:go_router/go_router.dart';

class customappbar extends StatelessWidget {
  const customappbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imagedata.logo,
            width: 100,
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(router.kSearchView);
              },
              icon: const Icon(Icons.search)),
        ],
      ),
    );
  }
}
