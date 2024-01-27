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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Scriptures",
                      style: GoogleFonts.raleway(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 7,),
                  Text(
                    "Wesley insisted that scripture is the first authority and contains the only measure whereby all other truth is tested. "
                        "It was delivered by authors who were divinely inspired. It is a rule sufficient of itself. It neither needs, nor is capable "
                        "of, any further addition. The scripture references to justification by faith as the gateway to scriptural holiness are well "
                        "known to true Wesleyans: Deut. 30:6; Ps. 130:8; Ezek. 36:25, 29; Matt. 5:48; 22:37; Luke 1:69; John 17:20-23; Rom. 8:3-4; II"
                        " Cor. 7:1; Eph. 3:14; 5:25-27; I Thess. 5:23; Titus 2:11-14; I John 3:8; 4:17",
                    style: GoogleFonts.raleway(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,

                    ),


                  )
                ],
              ),
              SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Tradition",
                      style: GoogleFonts.raleway(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 7,),
                  Text(
                    "Wesley wrote that it is generally supposed that traditional evidence is weakened by length of time, as it must necessarily "
                        "pass through so many hands in a continued succession of ages. Although other evidence is perhaps stronger, he insisted: "
                        "“Do not undervalue traditional evidence. Let it have its place and its due honour. It is highly serviceable in its kind, "
                        "and in its degree”. Wesley states that those of strong and clear understanding should be aware of its full force. For him "
                        "it supplies a link through 1,700 years of history with Jesus and the apostles. The witness to justification and sanctification is an unbroken chain drawing us into fellowship with those who have finished the race, fought the fight, and who now reign with God in his glory and might",
                    style: GoogleFonts.raleway(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,

                    ),


                  )
                ],
              ),
              SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Reason",
                      style: GoogleFonts.raleway(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 7,),
                  Text(
                    "Although scripture is sufficient unto itself and is the foundation of true religion, Wesley wrote: "
                        "“Now, of what excellent use is reason, if we would either understand ourselves, or explain to others, those living "
                        "oracles”. He states quite clearly that without reason we cannot understand the essential truths of Scripture. "
                        "Reason, however, is not a mere human invention. It must be assisted by the Holy Spirit if we are to understand "
                        "the mysteries of God. With regard to justification by faith and sanctification Wesley said that although reason "
                        "cannot produce faith, when impartial reason speaks we can understand the new birth, inward holiness, and outward holiness",
                    style: GoogleFonts.raleway(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,

                    ),


                  )
                ],
              ),
              SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Experience",
                      style: GoogleFonts.raleway(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 7,),
                  Text(
                    "Apart from scripture, experience is the strongest proof of Christianity. “What the scriptures promise, I enjoy”."
                        " Again, Wesley insisted that we cannot have reasonable assurance of something unless we have experienced it personally. "
                        "John Wesley was assured of both justification and sanctification because he had experienced them in his own life."
                        " What Christianity promised (considered as a doctrine) was accomplished in his soul. Furthermore, Christianity "
                        "(considered as an inward principle) is the completion of all those promises. Although traditional proof is complex, "
                        "experience is simple: “One thing I know; I was blind, but now I see.” Although tradition establishes the evidence a "
                        "long way off, experience makes it present to all persons. As for the proof of justification and sanctification Wesley "
                        "states that Christianity is an experience of holiness and happiness, the image of God impressed on a created spirit, "
                        "a fountain of peace and love springing up into everlasting life.",
                    style: GoogleFonts.raleway(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,

                    ),


                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
