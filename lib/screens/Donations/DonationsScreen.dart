import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Components/TextButtonComponent.dart';
import '../../Constants/myColors.dart';

class DonationsScreen extends StatefulWidget {
  const DonationsScreen({super.key});

  @override
  State<DonationsScreen> createState() => _DonationsScreenState();
}

class _DonationsScreenState extends State<DonationsScreen> {
  String? _dropDownValue;
  String? fullName;
  String? phone;

  bool _value = false;

  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        InkWell(
          splashColor: Colors.grey,
          onTap: (){

          },
          child: const TextButtonComponent(
            fontSize: 20,
            label: "PAY",
            borderRadius: 8,
            labelColor: MAIN_COLOR,
            textColor: Colors.white,
            fontWeight: FontWeight.w700,
            buttonHeight: 54,
          ),
        ),
      ],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: MAIN_COLOR,
        elevation: 0.2,
        title: Text(
          "Give",
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
          padding: const EdgeInsets.all(0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0,left: 14),
                      child: Row(
                        children: [
                          Text(
                            'GHS',
                            style: GoogleFonts.raleway(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '1214.00',
                              style: GoogleFonts.raleway(
                                fontSize: 37,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 25),
                        child: DropdownButton(
                          hint: _dropDownValue == null
                              ? Text("Offering",
                            style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w600
                            ),)
                              : Text(
                              _dropDownValue!,
                              style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600
                              )
                          ),
                          isExpanded: true,
                          iconSize: 30.0,
                          style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w600
                          ),
                          items: ['Offering','Tithe'].map(
                                (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            setState(
                                  () {
                                 _dropDownValue = val;
                              },
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Divider(color: Colors.black,thickness:
                0.15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Personal Information',
                    style: GoogleFonts.raleway(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: 48,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.only(left: 5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)), // set rounded corner radius
                ),
                child: Center(
                  child: TextField(
                    obscureText: false,
                    style: const TextStyle(color: Colors.black54),
                    controller: fullNameController,
                    onChanged: (value) {
                      fullName = value;
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:  const BorderSide(
                            color: MAIN_COLOR, width: 0.5),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10)),
                        borderSide:
                        BorderSide(color: Colors.black, width: 0.7),
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      labelText: "Fullname",
                      labelStyle: const TextStyle(
                          color: Colors.black, fontSize: 14),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 6,),
              Container(
                height: 48,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.only(left: 5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)), // set rounded corner radius
                ),
                child: Center(
                  child: TextField(
                    obscureText: false,
                    style: const TextStyle(color: Colors.black54),
                    controller: fullNameController,
                    onChanged: (value) {
                      fullName = value;
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:  const BorderSide(
                            color: MAIN_COLOR, width: 0.5),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10)),
                        borderSide:
                        BorderSide(color: Colors.black, width: 0.7),
                      ),
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      labelText: "Phone",
                      labelStyle: const TextStyle(
                          color: Colors.black, fontSize: 14),
                    ),
                  ),
                ),
              ),
              const Divider(color: Colors.black,thickness:
              0.15,),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Pay With',
                    style: GoogleFonts.raleway(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber
                    ),
                    child: Center(
                      child: CheckboxListTile(
                        title: Text('Mobile Money',
                          style: GoogleFonts.raleway(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        subtitle:  Text('Mtn Momo & VodaCash',
                          style: GoogleFonts.raleway(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        ),
                        secondary: const Icon(Icons.payment, color:Colors.black),
                        autofocus: false,
                        activeColor: Colors.green,
                        checkColor: Colors.white,
                        selected: _value,
                        value: _value,
                        overlayColor: MaterialStateColor.resolveWith(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.disabled)) {
                              // Color when checkbox is inactive
                              return Colors.grey;
                            }
                            return Colors.transparent; // Default color when not inactive
                          },
                        ),
                        onChanged: (bool? value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                    ),
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
