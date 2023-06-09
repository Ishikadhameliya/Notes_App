import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4)).then(
            (value) => Navigator.of(context).pushReplacementNamed("HomePage"));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/note.png"),
                )),
          ),
          const CircularProgressIndicator(),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Notes App",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ],
      ),
    );
  }
}