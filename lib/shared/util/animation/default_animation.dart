import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension DefaultAnimationWidget on Widget {
  awesomeAnimation(int index) {
    return animate()
        .fade(
          delay: 600.ms,
        )
        .slideX(
          delay: (index * 200).ms,
        )
        .shimmer(
          delay: (index * 600).ms,
        );
  }
}
