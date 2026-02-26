import 'package:flutter/material.dart';

class CommonPageGradient extends StatelessWidget {
  final Widget child;

  const CommonPageGradient({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: [Color.fromARGB(255, 213, 255, 4), Color(0xFF3E4516), Color(0xFF111203)],
          stops: [0.1, 0.55, 1.0],
        ),
      ),

      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: const Alignment(-0.9, -0.9),
                radius: 1.8,
                colors: [
                  Color.fromARGB(255, 208, 223, 111).withOpacity(0.55),
                  Colors.transparent,
                ],
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: const Alignment(0.9, -0.9),
                radius: 2.0,
                colors: [Colors.black.withOpacity(0.75), Colors.transparent],
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.bottomCenter,
                radius: 1.8,
                colors: [Colors.black.withOpacity(0.65), Colors.transparent],
              ),
            ),
          ),

          child,
        ],
      ),
    );
  }
}
