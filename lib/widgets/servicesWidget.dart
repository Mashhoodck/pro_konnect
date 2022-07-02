import 'package:flutter/material.dart';

class ServicesCards extends StatelessWidget {
  const ServicesCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 5,
          mainAxisExtent: 264,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 290,
            child: Text("data"),
          );
        });
  }
}
