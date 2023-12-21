import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/router.dart';
import 'package:go_router/go_router.dart';

class bodyspliah extends StatefulWidget {
  const bodyspliah({Key? key}) : super(key: key);

  @override
  State<bodyspliah> createState() => _bodyspliahState();
}

class _bodyspliahState extends State<bodyspliah>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sildinganmation;
  @override
  void initState() {
    super.initState();
    slidinganmation();
    navhome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("asset/image/Logo.png"),
        AnimatedBuilder(
          animation: sildinganmation,
          builder: (BuildContext context, Widget? child) {
            return SlideTransition(
              position: sildinganmation,
              child: const Text(
                "bookly app",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            );
          },
        )
      ],
    );
  }

//function

  void slidinganmation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    sildinganmation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

//nav
  Future<Null> navhome() {
    return Future.delayed(const Duration(seconds: 2), () {
      /*  Get.to(() => const home(),
    //     // calculations
        transition: Transition.fade,
        duration: kTranstionDuration);*/
      GoRouter.of(context).push(router.kHomeView);
    });
  }
}
