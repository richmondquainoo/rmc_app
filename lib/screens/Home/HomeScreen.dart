import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:rmcapp/screens/Organizations/OrganizationScreen.dart';
import '../../Components/ListTileMenuComponent.dart';
import '../../Constants/myColors.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryCardBackground,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: MAIN_COLOR,
        elevation: 0.2,
        title: Text(
          "Home",
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
      // drawer: Drawer(
      //   child: Material(
      //     color: MAIN_COLOR,
      //     child: Column(
      //       children: [
      //         Expanded(
      //           child: ListView(
      //           shrinkWrap: true,
      //             padding: const EdgeInsets.symmetric(horizontal: 15),
      //             children: <Widget>[
      //               DrawerHeader(
      //                 child: Container(
      //                   height: 70,
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.start,
      //                     children: [
      //                       AvatarGlow(
      //                         endRadius: 35,
      //                         glowColor: Colors.amber,
      //                         child: Container(
      //                           child: const CircleAvatar(
      //                             backgroundImage: AssetImage(
      //                                 'assets/images/personIcon.png'),
      //                             radius: 25,
      //                           ),
      //                         ),
      //                       ),
      //                       const SizedBox(
      //                         width: 6,
      //                       ),
      //                       Column(
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Text(
      //                             'Welcome',
      //                             style: GoogleFonts.raleway(
      //                                 fontSize: 15,
      //                                 fontWeight: FontWeight.w400,
      //                                 color: Colors.white),
      //                           ),
      //                           const SizedBox(
      //                             height: 4,
      //                           ),
      //                           // Text(
      //                           //   (userProfileModel != null &&
      //                           //       userProfileModel!.email != null)
      //                           //       ? userProfileModel!.email!
      //                           //       : '-',
      //                           //   style: GoogleFonts.lato(
      //                           //       fontSize: 13,
      //                           //       fontWeight: FontWeight.w300,
      //                           //       color: Colors.white),
      //                           // ),
      //                         ],
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //               const Divider(
      //                 color: Colors.white,
      //                 thickness: 0.12,
      //               ),
      //               ListTileMenuComponent(
      //                 icon: Icons.menu,
      //                 label: 'Organizations',
      //                 labelColor: Colors.white,
      //                 iconColor: Colors.amber,
      //                 onTap: () {
      //                   // Navigator.pop(context);
      //                   Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                       builder: (context) => const OrganizationScreen(
      //                         // showBackButton: true,
      //                       ),
      //                     ),
      //                   );
      //                 },
      //               ),
      //               ListTileMenuComponent(
      //                 icon: Icons.speaker,
      //                 iconColor: Colors.amber,
      //                 label: 'Announcements',
      //                 labelColor: Colors.white,
      //                 onTap: () {
      //                   Navigator.pop(context);
      //                   // Navigator.push(
      //                   //   context,
      //                   //   MaterialPageRoute(
      //                   //     builder: (context) => FavoritesScreen(),
      //                   //   ),
      //                   // );
      //                 },
      //               ),
      //               ListTileMenuComponent(
      //                 icon: Icons.add,
      //                 label: 'Sermon',
      //                 iconColor: Colors.amber,
      //                 labelColor: Colors.white,
      //                 onTap: () {
      //                   Navigator.pop(context);
      //                   // Navigator.push(
      //                   //   context,
      //                   //   MaterialPageRoute(
      //                   //     builder: (context) => OrderScreen(
      //                   //       showBackButton: true,
      //                   //     ),
      //                   //   ),
      //                   // );
      //                 },
      //               ),
      //               ListTileMenuComponent(
      //                 icon: Icons.currency_exchange_rounded,
      //                 label: 'Contribution',
      //                 iconColor: Colors.amber,
      //                 labelColor: Colors.white,
      //                 onTap: () {
      //                   Navigator.pop(context);
      //                   // Navigator.push(
      //                   //   context,
      //                   //   MaterialPageRoute(
      //                   //     builder: (context) => OrderScreen(
      //                   //       showBackButton: true,
      //                   //     ),
      //                   //   ),
      //                   // );
      //                 },
      //               ),
      //               const SizedBox(
      //                 height: 12,
      //               ),
      //             ],
      //           ),
      //         ),
      //
      //         Padding(
      //           padding: const EdgeInsets.all(20.0),
      //           child: Container(
      //             child: Align(
      //               alignment: FractionalOffset.bottomCenter,
      //               child: Container(
      //                 child: Column(
      //                   children: [
      //                     const Divider(
      //                       thickness: 0.12,
      //                       color: Colors.white,
      //                     ),
      //                     ListTileMenuComponent(
      //                       icon: Icons.settings,
      //                       label: 'Setting',
      //                       iconColor: Colors.amber,
      //                       labelColor: Colors.white,
      //                       onTap: () {
      //                         Navigator.pop(context);
      //                         // Navigator.push(
      //                         //   context,
      //                         //   MaterialPageRoute(
      //                         //     builder: (context) => AccountScreen(),
      //                         //   ),
      //                         // );
      //                       },
      //                     ),
      //                     SizedBox(height: 10,),
      //                     Text(
      //                       "Version 1.0.1",
      //                       style: GoogleFonts.raleway(
      //                           fontSize: 11,
      //                           fontWeight: FontWeight.w300,
      //                           color: Colors.white),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment:  CrossAxisAlignment.stretch,
            children: [
              Text(
                 'Welcome, Richie',
                style: GoogleFonts.raleway(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Text(
                'Latest',
                style: GoogleFonts.raleway(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
              Card(
                child: Container(
                  // height: 80,
                  width: MediaQuery.of(context).size.width*0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Center(
                          child: Image.asset("assets/images/flier.png")
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18),
                        child: MaterialButton(
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardDetails()));

                          },
                          height: 30,
                          elevation: 2,
                          splashColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                          color: Colors.blueAccent,
                          child: Center(
                            child: Text(
                              "Read More",
                              style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Text(
                'Upcoming Events',
                style: GoogleFonts.raleway(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
              Container(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          // height: 80,
                          width: MediaQuery.of(context).size.width*0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:Colors.red,
                          ),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Image.asset(
                                "assets/images/eventFlier.png",
                                  fit: BoxFit.cover,
                                  color: Colors.black.withOpacity(0.3),
                                  colorBlendMode: BlendMode.darken,
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.25,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 50,
                                    vertical: 220,
                                  ),
                                  decoration: BoxDecoration(
                                    color: BLACK_COLOR.withOpacity(0.25),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Shout for Joy",
                                      style: GoogleFonts.raleway(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        letterSpacing: 0.3,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "Resurrection Methodist",
                                      style: GoogleFonts.raleway(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        letterSpacing: 0.3,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "11 Nov 2024 | 4pm GMT",
                                      style: GoogleFonts.raleway(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        letterSpacing: 0.3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Text(
                'Actions',
                style: GoogleFonts.raleway(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
              Container(
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // height: 80,
                            width: MediaQuery.of(context).size.width*0.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color:Colors.red,
                            ),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.teal
                                  )
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.25,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 50,
                                      vertical: 220,
                                    ),
                                    decoration: BoxDecoration(
                                      color: BLACK_COLOR.withOpacity(0.45),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      Text(
                                        "GIVE",
                                        style: GoogleFonts.raleway(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          letterSpacing: 0.37,
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ),
                    Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              // height: 80,
                              width: MediaQuery.of(context).size.width*0.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:Colors.red,
                              ),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.blue
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height * 0.25,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 50,
                                        vertical: 220,
                                      ),
                                      decoration: BoxDecoration(
                                        color: BLACK_COLOR.withOpacity(0.25),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                        Text(
                                          "TESTIMONIES",
                                          style: GoogleFonts.raleway(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            letterSpacing: 0.7,
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),





            ],
          ),
        ),
      ),
    );
  }
}
