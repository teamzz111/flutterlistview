import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      ClipPath(
        clipper: WaveClipperOne(),
        child: Container(
          height: 140,
          color: const Color.fromARGB(255, 63, 12, 164),
        ),
      );
  }
}