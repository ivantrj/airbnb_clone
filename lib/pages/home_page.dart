import 'package:airbnb_clone/models/city.dart';
import 'package:airbnb_clone/widgets/city_widgets.dart';
import 'package:flutter/material.dart';

import '../widgets/header.dart';
import '../widgets/hero_banner.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              HeroBanner(),
              Header("Explore Nearby"),
              CitiesGrid(),
            ],
          ),
        ],
      ),
    );
  }
}
