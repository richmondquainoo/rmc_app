import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
      appBar: AppBar(
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
      drawer: Drawer(
        child: Material(
          color: MAIN_COLOR,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  children: <Widget>[
                    DrawerHeader(
                      child: Container(
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AvatarGlow(
                              endRadius: 35,
                              glowColor: Colors.amber,
                              child: Container(
                                child: const CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/images/personIcon.png'),
                                  radius: 25,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome',
                                  style: GoogleFonts.raleway(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // Text(
                                //   (userProfileModel != null &&
                                //       userProfileModel!.email != null)
                                //       ? userProfileModel!.email!
                                //       : '-',
                                //   style: GoogleFonts.lato(
                                //       fontSize: 13,
                                //       fontWeight: FontWeight.w300,
                                //       color: Colors.white),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 0.12,
                    ),
                    ListTileMenuComponent(
                      icon: Icons.menu,
                      label: 'Organizations',
                      labelColor: Colors.white,
                      iconColor: Colors.amber,
                      onTap: () {
                        // Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => CategoryScreen(
                        //       showBackButton: true,
                        //     ),
                        //   ),
                        // );
                      },
                    ),
                    ListTileMenuComponent(
                      icon: Icons.speaker,
                      iconColor: Colors.amber,
                      label: 'Announcements',
                      labelColor: Colors.white,
                      onTap: () {
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => FavoritesScreen(),
                        //   ),
                        // );
                      },
                    ),
                    ListTileMenuComponent(
                      icon: Icons.add,
                      label: 'Sermon',
                      iconColor: Colors.amber,
                      labelColor: Colors.white,
                      onTap: () {
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => OrderScreen(
                        //       showBackButton: true,
                        //     ),
                        //   ),
                        // );
                      },
                    ),
                    ListTileMenuComponent(
                      icon: Icons.currency_exchange_rounded,
                      label: 'Contribution',
                      iconColor: Colors.amber,
                      labelColor: Colors.white,
                      onTap: () {
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => OrderScreen(
                        //       showBackButton: true,
                        //     ),
                        //   ),
                        // );
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      child: Column(
                        children: [
                          const Divider(
                            thickness: 0.12,
                            color: Colors.white,
                          ),
                          ListTileMenuComponent(
                            icon: Icons.settings,
                            label: 'Setting',
                            iconColor: Colors.amber,
                            labelColor: Colors.white,
                            onTap: () {
                              Navigator.pop(context);
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => AccountScreen(),
                              //   ),
                              // );
                            },
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "Version 1.0.1",
                            style: GoogleFonts.raleway(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.002),
              Container(
                height: 140,
                color: Colors.red,
                child: Column(
                  children: [

                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
