import 'package:flutter/material.dart';

class TShadowStyle {
  static final verticalShadow = BoxShadow(
    color: Colors.black.withValues(alpha: 0.2),
    // Offset moves the shadow: x = 0 keeps it centred, y = 4 moves it down.
    offset: const Offset(0, 4),
    // blurRadius controls how soft/spread out the shadow edges look.
    blurRadius: 6,
  );

  static final horizontalShadow = BoxShadow(
    color: Colors.black.withValues(alpha: 0.2),
    // Here x = 4 moves the shadow to the right and y = 0 keeps it level.
    offset: const Offset(4, 0),
    // A larger blurRadius creates a softer, less sharp shadow.
    blurRadius: 6,
  );
}
