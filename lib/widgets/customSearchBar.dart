// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchBarRounded extends StatelessWidget {
  final IconData prefix;
  final String hintText;
  const SearchBarRounded(
      {Key? key, required this.prefix, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[300],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: Icon(prefix, color: Colors.black),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(15),
            )),
      ),
    );
  }
}
