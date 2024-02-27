import 'package:first_project/extension/subject_ext.dart';
import 'package:first_project/main_profile/languages/languages_php.dart';
import 'package:first_project/main_profile/languages/languages_c++.dart';
import 'package:first_project/main_profile/languages/languages_c.dart';
import 'package:first_project/main_profile/languages/languages_dart.dart';
import 'package:first_project/main_profile/languages/languages_java.dart';
import 'package:first_project/main_profile/languages/languages_csharp.dart';
import 'package:first_project/main_profile/languages/languages_pearl.dart';
import 'package:first_project/subject/mobile_application_dev.dart';
import 'package:first_project/subject/game_dev.dart';
import 'package:first_project/subject/machine_learning.dart';
import 'package:first_project/subject/web_dev.dart';
import 'package:flutter/material.dart';
import 'package:first_project/enums/enums.dart';

class AllLanguages extends StatefulWidget {
  const AllLanguages({super.key});

  @override
  State<AllLanguages> createState() => _AllLanguagesState();
}

class _AllLanguagesState extends State<AllLanguages> {
  static const Color selectedButtonColor = Color(0xFF0C356A); // dark blue
  static const Color defaultSelectedButtonColor = Colors.transparent;
  static const Color selectedDefaultButtonTextColor = Colors.black;
  static const Color selectedButtonTextColor = Color(0xFFFFCC70); //yellow
  static const Color black = Colors.black;
  static const Color yellow = Color(0xFFFFCC70);
  static const Color darkBlue = Color(0xFF0C356A);


  static final _viewLanguageScreen = [
    // arranged dapat to bawal magkapalit. since naka index tayo.
    // -ito yung kung saan nakapaloob yung mga topics
    const CLanguage(),
    const CPlusPlusLanguage(),
    const JavaLanguage(),
    const DartLanguage(),
    const CSharpLanguage(),
    const PhpLanguage(),
    // const PearlLanguage(),
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
    // bool isButtonEnabled = true;
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
                        ? selectedButtonColor // borderside color language
                        : selectedButtonColor, // borderside color language
                    width: 2,
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                    selectedScreen == index
                        ? selectedButtonColor
                        : defaultSelectedButtonColor),
              ),

              onPressed: () => _onViewScreen(index),
              child: Text(
                Languages.values[index].value, //TEXT SCREEN COLOR LANGUAGE
                style: TextStyle(
                  color: selectedScreen == index
                      ? selectedButtonTextColor // text color ng language when selected
                      : selectedDefaultButtonTextColor,
                ),
              ),
            ),
            itemCount: Languages.values
                .length, // ilalabas lahat ng values or list ni Languages na nakaindicate sa enums
          ),
        ),
        Expanded(
          flex: 10,

          child: selectedScreen == null
              ? Container(

                  decoration: const BoxDecoration(
                    gradient:  LinearGradient(
                      colors:  [ Color(0xFFE0F4FF), Color(0xFF87C4FF)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const Padding(
                            padding:  EdgeInsets.only(left: 10.0),
                            child:  Text(
                              'Courses',
                              style: TextStyle(
                                color: black,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 80,
                            height: 1,
                            color: black,
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18, horizontal: 16),
                          children: [
                            GridView.count(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisCount: 1,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                              childAspectRatio: 3,
                              children: List.generate(
                                SubjectSection.values.length,
                                (index) {
                                  final nameOfCourses =
                                      SubjectSection.values[index].value;
                                  return Card(
                                    elevation: 10,
                                    color:  darkBlue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(
                                          color: Colors.yellow, width: 2),
                                    ),
                                    child: InkWell(
                                      onTap:
                                          () => _onViewSubject(index),

                                      // onTap: isButtonEnabled
                                      //? () => _onViewSubject(index)
                                      //: null,

                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, top: 10, right: 10),
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Image.asset(
                                                  SubjectSection
                                                      .values[index].imagePath,
                                                  height: 100,
                                                  width: 100,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(width: 20), // spacing between the image and the text
                                            Expanded(
                                              child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  nameOfCourses, // Replace with your text
                                                  style: const TextStyle(
                                                      color: yellow,
                                                      fontSize: 16,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.bold,
                                                  ),
                                                overflow: TextOverflow.ellipsis, // Handle overflow by displaying ellipsis
                                                maxLines: 2, // Limit to 2 lines before showing ellipsis

                                                  ) // Adjust text style as needed

                                              ],
                                            ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : _viewLanguageScreen[selectedScreen!],
        ),

      ],
    );
  }
}
