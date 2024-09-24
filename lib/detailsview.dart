import 'package:flutter/material.dart';

class Detailsview extends StatefulWidget {
  const Detailsview({super.key});

  @override
  State<Detailsview> createState() => _DetailsviewState();
}

class _DetailsviewState extends State<Detailsview> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: 100,
              width: 900,
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
