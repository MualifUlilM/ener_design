import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard({this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey)]),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 80,
              decoration: BoxDecoration(color: Colors.red),
            ),
            Container(
              height: 60,
              width: 80,
            ),
          ],
        ),
      ),
    );
  }
}
