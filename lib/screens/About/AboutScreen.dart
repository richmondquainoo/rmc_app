import 'package:flutter/material.dart';

import '../../Components/TextButtonComponent.dart';
import '../../Constants/myColors.dart';
import 'package:google_fonts/google_fonts.dart';
class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MAIN_COLOR,
        elevation: 0.2,
        automaticallyImplyLeading: true,
        title: Text(
          "Resurrection Methodist",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              InkWell(
                splashColor: Colors.grey,
                onTap: (){

                },
                child: const TextButtonComponent(
                  fontSize: 15,
                  label: "Church Beliefs",
                  borderRadius: 8,
                  labelColor: MAIN_COLOR,
                  textColor: Colors.white,
                  fontWeight: FontWeight.w700,
                  buttonHeight: 54,
                ),
              ),
              SizedBox(height: 5,),
              InkWell(
                splashColor: Colors.grey,
                onTap: (){

                },
                child: const TextButtonComponent(
                  fontSize: 15,
                  label: "Our History",
                  borderRadius: 8,
                  labelColor: MAIN_COLOR,
                  textColor: Colors.white,
                  fontWeight: FontWeight.w700,
                  buttonHeight: 54,
                ),
              ),
              SizedBox(height: 5,),
              InkWell(
                splashColor: Colors.grey,
                onTap: (){

                },
                child: const TextButtonComponent(
                  fontSize: 15,
                  label: "Church Administration",
                  borderRadius: 8,
                  labelColor: MAIN_COLOR,
                  textColor: Colors.white,
                  fontWeight: FontWeight.w700,
                  buttonHeight: 54,
                ),
              ),
              SizedBox(height: 5,),
              InkWell(
                splashColor: Colors.grey,
                onTap: (){

                },
                child: const TextButtonComponent(
                  fontSize: 15,
                  label: "Gallery",
                  borderRadius: 8,
                  labelColor: MAIN_COLOR,
                  textColor: Colors.white,
                  fontWeight: FontWeight.w700,
                  buttonHeight: 54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
