import 'package:flutter/material.dart';

class BackgroundOverlay extends StatelessWidget {
  final double opacity;
  final String imagePath;
  final BoxFit fit;
  final AlignmentGeometry alignment;

  const BackgroundOverlay({
    Key? key,
    required this.opacity,
    required this.imagePath,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Stack(
        children: [
          Opacity(
            opacity: opacity,
            child: Image.asset(
              imagePath,
              fit: fit,
              alignment: alignment,
            ),
          ),
          // Layer 2: Image
          Positioned(
            left: 0, // Align left
            top: 300, // Align top
            right: 0, // Align right
            bottom: 0, // Align bottom
            child: Opacity(
              opacity: 0.2, // Specify the opacity value here (0.0 - 1.0)
              child: Image.asset(
                'assets/overlay/line.png', // Replace with your image path
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            left: 0, // Align left
            top: 0, // Align top
            right: 0, // Align right
            bottom: 200, // Align bottom
            child: Opacity(
              opacity: 0.3, // Specify the opacity value here (0.0 - 1.0)
              child: Image.asset(
                'assets/overlay/line.png', // Replace with your image path
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
