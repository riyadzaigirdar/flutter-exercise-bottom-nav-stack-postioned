import 'package:flutter/material.dart';
import 'package:some/constants.dart';
import 'package:some/pages/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: MaterialApp(
          title: "Exercise",
          theme: ThemeData(
              fontFamily: "Cairo",
              scaffoldBackgroundColor: kBackgroundColor,
              textTheme:
                  Theme.of(context).textTheme.apply(displayColor: kTextColor)),
          home: const Home(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
