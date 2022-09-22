import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:sports/workout/workout_start.dart';
import 'package:get/get.dart';

import '../components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/Icons/logo.jpg'),
              ),
              MyButton(
                text: "Start",
                size: 40,
                onpressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => WorkoutStart(),
                      transitionDuration: Duration(milliseconds: 500),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c),
                    ),
                  );
                },
              ),
              MyButton(
                text: "Options",
                size: 20,
                onpressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => WorkoutStart(),
                      transitionDuration: Duration(milliseconds: 500),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
