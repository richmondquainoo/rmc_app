
import 'package:flutter/material.dart';
import 'package:rmcapp/screens/Donations/DonationsScreen.dart';
import 'package:rmcapp/screens/Sermon/SermonScreen.dart';
import 'package:rmcapp/screens/Settings/SettingsScreen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../Constants/myColors.dart';
import '../Home/HomeScreen.dart';
import '../Organizations/OrganizationScreen.dart';


class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {

  int _selectedIndex = 0;
  var _currentIndex = 0;

  _IndexState();

  Future<bool> showExitPopUp() async {
    // new UtilityService().confirmationBox(
    //   title: 'Quit Application',
    //   message: 'Are you sure you want to exit application?',
    //   context: context,
    //   yesButtonColor: Colors.teal,
    //   noButtonColor: Colors.red,
    //   onYes: () async {
    //     Navigator.pop(context);
    //     showDialog(
    //       context: context,
    //       builder: (context) {
    //         return ProgressDialog(
    //           displayMessage: 'Exiting application...',
    //         );
    //       },
    //     );
    //
    //     return true;
    //   },
    //   onNo: () {
    //     Navigator.pop(context);
    //     return false;
    //   },
    // );
    return false;
  }

  @override
  void initState() {
    // print("User is : ${widget.userModel}");
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: showExitPopUp,
      child :Scaffold(
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor:Colors.black,
            ),
            // SalomonBottomBarItem(
            //   icon: Icon(Icons.dashboard_rounded),
            //   title: Text("Organization"),
            //   selectedColor: Colors.black,
            // ),
            SalomonBottomBarItem(
              icon: Icon(Icons.menu_book_sharp),
              title: Text("Sermon"),
              selectedColor: Colors.black,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.currency_exchange_rounded),
              title: Text("Give"),
              selectedColor: Colors.black,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.settings),
              title: Text("Settings"),
              selectedColor: Colors.black,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: navigator(_currentIndex),
      ),
      // child: Scaffold(
      //   bottomNavigationBar: buildBottomNavigationBar(),
      //   backgroundColor: NAVBAR_BACKGROUND_COLOR,
      //   body: navigator(_selectedIndex),
      // ),
    );
  }

  Widget? navigator(int index) {
    print("THE INDEX: ${index}");
    // Provider.of<AppData>(context, listen: false).updateUserData(customer);
    if (index == 0) {
      return const HomeScreen(
      );
    } else if (index == 1) {
      return SermonScreen();
    } else if (index == 2) {
      return DonationsScreen(
        // showBackButton: false,
      );
    }
    else if (index == 3) {
      return SettingsScreen(
        // showBackButton: false,
      );
    }
    // else if (index == 3) {
    //   return const LitigationScreen();
    // }
    else {
      return null;
    }
  }

}
