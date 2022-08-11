import 'package:flutter/material.dart';

import '../models/city.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard(this.city, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              city.image,
              width: 59,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, top: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  city.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  city.subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CitiesGrid extends StatelessWidget {
  const CitiesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 180,
        child: SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            childAspectRatio: 2.5 / 1,
            crossAxisSpacing: 10.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return CityCard(cities[index]);
            },
            childCount: cities.length,
          ),
        ),
      ),
    );
  }
}
