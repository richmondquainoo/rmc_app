import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Components/TextButtonComponent.dart';
import '../../Constants/myColors.dart';

class OrgDetailsScreen extends StatefulWidget {
  
  const OrgDetailsScreen({super.key});

  @override
  State<OrgDetailsScreen> createState() => _OrgDetailsScreenState();
}

class _OrgDetailsScreenState extends State<OrgDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        InkWell(
          splashColor: Colors.grey,
          onTap: (){
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return MyDialog();
              },
            );
          },
          child: const TextButtonComponent(
            fontSize: 15,
            label: "REQUEST TO JOIN",
            borderRadius: 8,
            labelColor: MAIN_COLOR,
            textColor: Colors.white,
            fontWeight: FontWeight.w700,
            buttonHeight: 54,
          ),
        ),
      ],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MAIN_COLOR,
        elevation: 0.2,
        automaticallyImplyLeading: true,
        title: Text(
          "Men's Fellowship",
          style: GoogleFonts.raleway(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            letterSpacing: .75,
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
              Container(
                height: MediaQuery.of(context).size.height/3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Card(child: Image.asset("assets/images/sundayschool.jpeg")),

              ),
              SizedBox(height: 10,),
              Column(
                children: [
                  Text(
                    "Welcome to the [Church Name] Men's Fellowship, a community of brothers united in faith, "
                        "friendship, and service. Our fellowship is built on the foundation of Christian values, "
                        "creating a space where men can grow spiritually, connect with one another, and positively "
                        "impact the world around us.",
                    style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Objectives",
                      style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Spiritual Growth: Through regular gatherings, Bible studies, and prayer sessions, "
                          "we aim to deepen our understanding of God's word and strengthen our relationship with Him.",
                      style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Spiritual Growth: Through regular gatherings, Bible studies, and prayer sessions, "
                          "we aim to deepen our understanding of God's word and strengthen our relationship with Him.",
                      style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController  lastNameController= TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(
        "Enter your personal details",
        style: GoogleFonts.raleway(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w700),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 15),
          child: Column(
            children: [
              TextField(
                controller: firstNameController,
                decoration: InputDecoration(labelText: 'Firstname'),
              ),
              TextField(
                controller: lastNameController,
                decoration: InputDecoration(labelText: 'Lastname'),
              ),
              TextField(
                controller: phoneController,
                decoration: InputDecoration(labelText: 'Phone Number'),
              ),
              TextField(
                controller: locationController,
                decoration: InputDecoration(labelText: 'Location'),
              ),
              const SizedBox(height: 20),
              InkWell(
                splashColor: Colors.grey,
                onTap: (){

                },
                child: const TextButtonComponent(
                  fontSize: 19,
                  label: "SUBMIT",
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
      ],
    );
  }
}