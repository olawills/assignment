import 'package:flutter/material.dart';

class DesignCard extends StatelessWidget {
  final String bigText;
  final String smallText;
  final Color color;
  final Color bigTextColor;
  final Color smallTextColor;
  const DesignCard({
    super.key,
    required this.bigText,
    required this.smallText,
    required this.color,
    required this.bigTextColor,
    required this.smallTextColor,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Column(
          children: [
            Text(
              bigText,
              style: TextStyle(
                color: bigTextColor,
                fontSize: 36,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              smallText,
              style: TextStyle(
                color: smallTextColor,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
