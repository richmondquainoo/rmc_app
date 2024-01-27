import 'package:flutter/material.dart';

import '../../Constants/myColors.dart';
import 'package:google_fonts/google_fonts.dart';
class AnnouncementScreen extends StatefulWidget {
  const AnnouncementScreen({super.key});

  @override
  State<AnnouncementScreen> createState() => _AnnouncementScreenState();
}

class _AnnouncementScreenState extends State<AnnouncementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MAIN_COLOR,
        elevation: 0.2,
        automaticallyImplyLeading: true,
        title: Text(
          "Announcement",
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
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color:Colors.amber.shade200
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          "Spiritual Growth: Through regular gatherings, Bible studies, and prayer sessions, "
                              "we aim to deepen our understanding of God's word and strengthen our relationship with Him.",
                          style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Date: 24-02-2024",
                              style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Resurrection Methodist, Adenta",
                              style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              SizedBox(height: 10,),
              Container(
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color:Colors.amber.shade200
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text(
                        "Spiritual Growth: Through regular gatherings, Bible studies, and prayer sessions, "
                            "we aim to deepen our understanding of God's word and strengthen our relationship with Him.",
                        style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date: 24-02-2024",
                            style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Resurrection Methodist, Adenta",
                            style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
