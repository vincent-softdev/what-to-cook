import 'package:flutter/material.dart';

class TShadowStyle {
  static final verticalShadow = BoxShadow(
    color: Colors.black.withValues(alpha: 0.2),
    offset: const Offset(0, 4),
    blurRadius: 6,
  );

  static final horizontalShadow = BoxShadow(
    color: Colors.black.withValues(alpha: 0.2),
    offset: const Offset(4, 0),
    blurRadius: 6,
  );
}
