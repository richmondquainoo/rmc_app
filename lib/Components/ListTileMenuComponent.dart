import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTileMenuComponent extends StatelessWidget {
  final IconData? icon;
  final String? label;
  final Function() onTap;
  final Color? labelColor;
  final Color? iconColor;

  const ListTileMenuComponent(
      {this.icon, this.label, required this.onTap, this.labelColor, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Icon(icon, color: iconColor),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            child: Text(
              label!,
              style: GoogleFonts.raleway(
                  fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
