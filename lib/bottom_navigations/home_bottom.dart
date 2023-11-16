import 'package:first_project/extension/subject_ext.dart';
import 'package:first_project/main_profile/languages/languages_arduino.dart';
import 'package:first_project/main_profile/languages/languages_c++.dart';
import 'package:first_project/main_profile/languages/languages_c.dart';
import 'package:first_project/main_profile/languages/languages_dart.dart';
import 'package:first_project/main_profile/languages/languages_java.dart';
import 'package:first_project/main_profile/languages/languages_ruby.dart';
import 'package:first_project/subject/application_dev.dart';
import 'package:first_project/subject/game_dev.dart';
import 'package:first_project/subject/machine_dev.dart';
import 'package:first_project/subject/web_dev.dart';
import 'package:flutter/material.dart';
import 'package:first_project/enums/enums.dart';

class AllLanguages extends StatefulWidget {
  const AllLanguages({super.key});

  @override
  State<AllLanguages> createState() => _AllLanguagesState();
}

class _AllLanguagesState extends State<AllLanguages> {
  static final _viewLanguageScreen = [
    // arranged dapat to bawal magkapalit. since naka index tayo.
    const JavaLanguage(), // -ito yung kung saan nakapaloob yung mga topics
    const CLanguage(),
    const CPlusPlusLanguage(),
    const DartLanguage(),
    const RubyLanguage(),
    const ArduinoLanguage(),
  ];

  int?
  selectedScreen; //  pwedeng mag hold ng either may value or null itong variable na ito

  void _onViewScreen(int index) {
    //_onViewScreen is a function na may parameter na index
    setState(() {
      selectedScreen = selectedScreen != index ? index : null;
    }); //if si selectedscreen ay may sinelect na bagong screen papasok siya sa index at mag ccreate
    //   ng panibagong nakapaloob sa index if wala ng sinelect dun mag eequal as null.
    // hanggat wala pang sineselect si selectedscreen is == null
  }

  static final _viewSubjectScreen = [
    const AppDevPage(),
    const GameDevPage(),
    const WebDevPage(),
    const MachineDevPage(),

  ];

  int? selectedSubject;

  void _onViewSubject(int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return _viewSubjectScreen[index];
        },
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    bool isButtonEnabled = true;
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            // use para sa separator ng buttons
            padding: const EdgeInsets.all(10.0),
            separatorBuilder: (_, __) => const SizedBox(width: 10.0),
            scrollDirection: Axis.horizontal,
            // direction scroll

            // then tsaka gagawa ng elevated button
            itemBuilder: (context, index) => OutlinedButton(
              // has a callback function ito yung ginagamit para ibuild o mag generate
              // ulit ng sinelect mo na index
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: selectedScreen == index
                        ? Colors.lightBlue[400]!
                        : Color(0xFF164863),
                    width: 1.5,
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(selectedScreen == index ? Colors.lightBlue[400] : Colors.transparent),
              ),

              onPressed: () => _onViewScreen(index),
              child: Text(Languages.values[index].value, //TEXT SCREEN COLOR LANGUAGE
                style: TextStyle(
                  color: selectedScreen == index
                      ? Colors.white
                      : Colors.white,
                ),),
            ),
            itemCount: Languages.values
                .length, // ilalabas lahat ng values or list ni Languages na nakaindicate sa enums
          ),
        ),


        Expanded(
          flex: 10,
          child: selectedScreen == null
              ? Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF3D84A8), Color(0xFF27496D)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),

              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          'Courses',
                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal,
                          ),

                        ),
                        Container(
                          width: MediaQuery.of(context).size.width -80 , // Adjust the width of the line
                          height: 1, // Adjust the height of the line to make it long
                          color: Colors.black, // Adjust the color of the line
                        ),
                      ],
                    ),
                    Expanded(

                      // color of button
                      child: Padding(
                          padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                          child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 15,

                            ),

                            // then tsaka gagawa ng elevated button
                            itemBuilder: (context, index) => ElevatedButton( // SUBBJECT CARD
                              // has a callback function ito yung ginagamit para ibuild o mag generate
                              // ulit ng sinelect mo na index
                              style: ElevatedButton.styleFrom(
                                // Change the button color
                                elevation: 8,


                                //selectedScreen == null
                                // if index is not equal to selected screen ang kulay niya is deep purple  but if == ang color niya is deepPurple[300]
                                backgroundColor: index != selectedSubject
                                    ? Colors.white
                                    : Colors.cyan[600],
                                // padding: EdgeInsets.all(1),

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              //CALLING THE IMAGE IN SUBJECT BUTTON
                              onPressed: isButtonEnabled ? () => _onViewSubject(index) : () {}, // : null,
                              child: Image.asset(
                                  SubjectSection.values[index].imagePath,
                                  // width: 100,
                                  height: 150 ),
                            ),


                            itemCount: SubjectSection.values
                                .length, // ilalabas lahat ng values or list ni Languages na nakaindicate sa enums
                          )),
                    )]))
              : _viewLanguageScreen[
          selectedScreen!], //"!" is an indication na hindi siya pwede maging null.
          //   pag nag click siya sa mga languages ang lalabas is ito pero kapag hindi naman siya nag click yung sa ? ang ilalabas.
        )

      ],
    );
  }
}
