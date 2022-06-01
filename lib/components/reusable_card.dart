import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({@required this.myColor, this.cardChild, this.onTap});
  final Color myColor;
  final Widget cardChild;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
