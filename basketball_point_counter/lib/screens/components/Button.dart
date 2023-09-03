import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({this.color, this.ontap, this.text});
  final Color? color;
  final Function()? ontap;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
          backgroundColor: color, minimumSize: const Size(140, 45)),
      child: Text('$text'),
    );
  }
}
