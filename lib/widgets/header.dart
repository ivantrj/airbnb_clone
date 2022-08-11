import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header(String s, {Key? key}) : super(key: key);

  String text = "";

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 15.0),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 20,
              color: Colors.black.withOpacity(.9),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
