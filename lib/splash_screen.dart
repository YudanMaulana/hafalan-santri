import 'package:buku_saku_santri/choice_hafalan.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
          duration: const Duration(milliseconds: 3000),
          backgroundColor: const Color(0xFF009788),
          onInit: () {
            debugPrint("On Init");
          },
          onEnd: () {
            debugPrint("On End");
          },
          childWidget: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 200,
                height: 40,
              ),
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset("assets/splash_screen.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: Text(
                  "Youand.dev",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          onAnimationEnd: () => debugPrint("On Fade In End"),
          nextScreen: const ChoiceHafalan()),
    );
  }
}
