import 'package:flutter/material.dart';

import '../../Constants/myColors.dart';
import 'package:google_fonts/google_fonts.dart';
class ChurchBelief extends StatefulWidget {
  const ChurchBelief({super.key});

  @override
  State<ChurchBelief> createState() => _ChurchBeliefState();
}

class _ChurchBeliefState extends State<ChurchBelief> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MAIN_COLOR,
        elevation: 0.2,
        automaticallyImplyLeading: true,
        title: Text(
          "Church Beliefs",
          style: GoogleFonts.raleway(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.white,

          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/rmcLogo.png"),
          )
        ],

      ),
    );
  }
}
