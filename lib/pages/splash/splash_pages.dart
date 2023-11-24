import 'package:flutter/material.dart';
import 'package:instagram_0/pages/register/register.dart';

class SplashePages extends StatefulWidget {
  const SplashePages({Key? key}) : super(key: key);

  @override
  State<SplashePages> createState() => _SplashePagesState();
}

class _SplashePagesState extends State<SplashePages>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(controller);
    controller.forward();
    _futureAnimation();
  }

  Future<void> _futureAnimation() async {
    await Future.delayed(const Duration(seconds: 2));
    await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterPages()));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return FadeTransition(
                opacity: controller,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 400),
                    child: Image.asset(
                      "assets/images/instagram1.jpg",
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              );
            },
          ),
          const Spacer(),
          const Text(
            "form",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 20,
              fontFamily: "Instagram"
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "♾️",
                  style: TextStyle(color: Colors.red, fontSize: 30),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "meta",
                  style: TextStyle(color: Colors.red, fontSize: 30,fontFamily: "Instagram"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
