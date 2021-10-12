import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final Color bgColor;
  const CustomCard({Key? key, required this.text, required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: _size.width / 20),
      child: Container(
        height: 55,
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.only(top: 14, left: 14),
          child: Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            style: BorderStyle.solid,
            width: 1.0,
          ),
          color: bgColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
