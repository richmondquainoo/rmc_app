import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avatar_glow/avatar_glow.dart';
import '../../Components/settingCardComponent.dart';
import '../../Constants/myColors.dart';
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        persistentFooterButtons: [
          Center(
            child: Text(
              "Version 1.0.1",
              style: GoogleFonts.raleway(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: Colors.black54,
                letterSpacing: .75,
              ),
            ),
          ),
        ],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: MAIN_COLOR,
        elevation: 0.2,
        title: Text(
          "Settings",
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 143,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            AvatarGlow(
                              endRadius: 35,
                              glowColor: LABEL_COLOR,
                              child: Container(
                                child: const CircleAvatar(
                                  backgroundColor: Colors.white12,
                                  maxRadius: 23.5,
                                  backgroundImage: AssetImage(
                                      "assets/images/personIcon.png"),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                       "-",
                                      style: GoogleFonts.raleway(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600)),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  child: Text(
                                       "-",
                                      style: GoogleFonts.raleway(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text('Phone',
                                        style: GoogleFonts.raleway(
                                            fontSize: 13,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    child: Text(
                                        "-",
                                        style: GoogleFonts.lato(
                                            fontSize: 13,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => EditProfileScreen(),
                                //   ),
                                // );
                              },
                              child: Container(
                                height: 27,
                                width: 75,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Edit",
                                      style: GoogleFonts.raleway(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    const Icon(
                                      Icons.edit,
                                      size: 20,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 14, bottom: 10),
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).shadowColor.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(children: [
                  SettingCardComponent(
                    title: "Gallery",
                    leadingIcon: Icons.card_giftcard_outlined,
                    bgIconColor: Colors.amber,
                    onTap: () {
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
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 14,bottom: 0),
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).shadowColor.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(children: [
                  // SettingCardComponent(
                  //   title: "Favorites",
                  //   leadingIcon: Icons.favorite_border,
                  //   bgIconColor: Colors.amber,
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => FavoritesScreen(
                  //           showBackButton: false,
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 14,bottom: 10),
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).shadowColor.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(children: [
                  SettingCardComponent(
                    title: "Privacy Policy",
                    leadingIcon: Icons.shield,
                    bgIconColor: Colors.amber,
                    onTap: () {

                    },
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 14,bottom: 10),
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).shadowColor.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(children: [
                  SettingCardComponent(
                    title: "About App",
                    leadingIcon: Icons.info_rounded,
                    bgIconColor: Colors.amber,
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => AboutScreen()));
                    },
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 14),
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).shadowColor.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(children: [
                  SettingCardComponent(
                    title: "Log Out",
                    leadingIcon: Icons.logout_outlined,
                    bgIconColor: Colors.redAccent,
                    onTap: () {

                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Center(
                                child: Text(
                                  "Confirmation",
                                  style: GoogleFonts.raleway(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    letterSpacing: 0.3,
                                  ),
                                ),
                              ),
                              content: Text(
                                "Are you sure you want to logout?",
                                style: GoogleFonts.raleway(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              actions: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: SizedBox(
                                    height: 34,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey,
                                      ),
                                      onPressed: () async {
                                        // Navigator.pop(context);
                                        // showDialog(
                                        //   context: context,
                                        //   builder: (context) {
                                        //     return ProgressDialog(displayMessage: 'Logging out...');
                                        //   },
                                        // );
                                        // //close Dialog
                                        // cleanUp();
                                        // formKey.currentState?.reset();
                                        // print("CLEAN UP COMPLETE!!!!!!!!!!!!!!");
                                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NewLoginScreen()));
                                        // SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
                                      },
                                      child: Text(
                                        "Yes",
                                        style: GoogleFonts.raleway(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0, right: 8),
                                  child: SizedBox(
                                    height: 34,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context); //close Dialog
                                        },
                                        child: Text(
                                          "No",
                                          style: GoogleFonts.raleway(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                        )),
                                  ),
                                ),
                              ],
                            );
                          });
                    },
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
