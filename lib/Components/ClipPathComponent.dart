import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/myColors.dart';
import 'TopBarComponent.dart';

class ClipPathComponent extends StatelessWidget {
  final String? label1;
  final String? label2;
  final IconButton? iconButton;
  final TopBarComponent? topBarComponent;

  ClipPathComponent(
      {this.label1,
      @required this.label2,
      this.iconButton,
      this.topBarComponent});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipPathClass(),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 15);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 70);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
