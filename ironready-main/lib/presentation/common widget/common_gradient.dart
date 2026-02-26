
import 'package:flutter/material.dart';

class CommonGradient extends StatelessWidget {
  final Widget child;
  final String? backgroundImage; 

  const CommonGradient({
    super.key,
    required this.child,
    this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        children: [
         
          if (backgroundImage != null)
            Positioned.fill(
              child: Image.asset(
                backgroundImage!,
                fit: BoxFit.cover,
              ),
            )
          else
            Positioned.fill(
              child: Container(
                color: Colors.black, 
              ),
            ),

        
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topLeft,
                  radius: 1.1,
                  colors: [
                    Color.fromARGB(120, 204, 255, 1),
                    Color.fromARGB(0, 204, 255, 1),
                  ],
                  stops: [0.37, 0.7],
                ),
              ),
            ),
          ),

      
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(60, 0, 0, 0),
                    Color.fromARGB(180, 0, 0, 0),
                    Color.fromARGB(255, 0, 0, 0),
                  ],
                  stops: [
                    0.2,
                    0.6,
                    1.0, // ✅ fixed
                  ],
                ),
              ),
            ),
          ),

         
          child,
        ],
      ),
    );
  }
}
