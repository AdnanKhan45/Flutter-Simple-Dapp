
import 'package:flutter/material.dart';

class CustomContainerButtonWidget extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onTap;
  final int? value;
  const CustomContainerButtonWidget({Key? key, required this.title, required this.color, required this.onTap, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
          color: color,


        ),
        child: Center(
          child: Text(
            title, textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
