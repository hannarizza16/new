import 'package:first_project/main_profile/languages/languages_arduino.dart';
import 'package:first_project/main_profile/languages/languages_c++.dart';
import 'package:first_project/main_profile/languages/languages_c.dart';
import 'package:first_project/main_profile/languages/languages_dart.dart';
import 'package:first_project/main_profile/languages/languages_java.dart';
import 'package:first_project/main_profile/languages/languages_ruby.dart';
import 'package:flutter/material.dart';
import 'package:first_project/enums/enums.dart';

class AllLanguages extends StatefulWidget {
  const AllLanguages({super.key});

  @override
  State<AllLanguages> createState() => _AllLanguagesState();
}

class _AllLanguagesState extends State<AllLanguages> {
  static final _viewLanguageScreen = [ // arranged dapat to bawal magkapalit. since naka index tayo.
    const JavaLanguage(),      // -ito yung kung saan nakapaloob yung mga topics
    const CLanguage(),
    const CPlusPlusLanguage(),
    const DartLanguage(),
    const RubyLanguage(),
    const ArduinoLanguage(),
  ];

  int? selectedScreen; //  pwedeng mag hold ng either may value or null itong variable na ito

  void _onViewScreen(int index) { //_onViewScreen is a function na may parameter na index
    setState(() {
      selectedScreen = selectedScreen != index ? index : null;
    }); //if si selectedscreen ay may sinelect na bagong screen papasok siya sa index at mag ccreate
    //   ng panibagong nakapaloob sa index if wala ng sinelect dun mag eequal as null.
    // hanggat wala pang sineselect si selectedscreen is == null
  }

  @override
  Widget build(BuildContext context) {
    return Column( children: [
      Expanded(
        child: ListView.separated( // use para sa separator ng buttons
          padding: const EdgeInsets.all(10.0),
          separatorBuilder: (_, __) => const SizedBox(width: 10.0),
          scrollDirection: Axis.horizontal, // direction scroll

          // then tsaka gagawa ng elevated button
          itemBuilder: (context, index) => ElevatedButton( // has a callback function ito yung ginagamit para ibuild o ag generat
            style: ElevatedButton.styleFrom(               // ulit ng sinelect mo na index

              //selectedScreen == null
              // if index is not equal to selected screen ang kulay niya is deep purple  but if == ang color niya is deepPurple[300]
              backgroundColor: index != selectedScreen ? Colors.deepPurple[300] : Colors.deepPurple,
            ),

            onPressed: () => _onViewScreen(index),
            child: Text(Languages.values[index].value),
          ),
          itemCount: Languages.values.length, // ilalabas lahat ng values or list ni Languages na nakaindicate sa enums
        ),
      ),
      Expanded(
        flex: 10, // space o kung gano kalaki yung space na nakalaan for language button
        child: selectedScreen == null // kapag si selected screen ay null
            ? Container(
          color: Colors.deepPurple [100], // color of button
          child: const Center(
            child: Text('Please choose a language!'),
          ),
        )
            : _viewLanguageScreen[selectedScreen!], //"!" is an indication na hindi siya pwede maging null.
      )
    ],
    );
  }
}
