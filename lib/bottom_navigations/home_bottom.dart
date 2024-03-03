import 'package:first_project/extension/subject_ext.dart';
import 'package:first_project/gradient_background.dart';
import 'package:first_project/main_profile/languages/languages_php.dart';
import 'package:first_project/main_profile/languages/languages_c++.dart';
import 'package:first_project/main_profile/languages/languages_c.dart';
import 'package:first_project/main_profile/languages/languages_dart.dart';
import 'package:first_project/main_profile/languages/languages_java.dart';
import 'package:first_project/main_profile/languages/languages_csharp.dart';
import 'package:first_project/subject/mobile_application_dev.dart';
import 'package:first_project/subject/game_dev.dart';
import 'package:first_project/subject/machine_learning.dart';
import 'package:first_project/subject/web_dev.dart';
import 'package:flutter/material.dart';
import 'package:first_project/enums/enums.dart';

class AllLanguages extends StatefulWidget {
  const AllLanguages({Key? key}) : super(key: key);

  @override
  State<AllLanguages> createState() => _AllLanguagesState();
}

class _AllLanguagesState extends State<AllLanguages> {
  static const Color selectedButtonColor =
  Color(0xFF0C356A); // dark blue // loob
  static const Color defaultSelectedButtonColor = Colors.transparent;
  static const Color selectedDefaultButtonTextColor = Colors.black;
  static const Color selectedButtonTextColor = Color(0xFFFFCC70); //yellow
  static const Color darkBlue = Color(0xFF0C356A); //card color

  static final _viewLanguageScreen = [
    const CLanguage(),
    const CPlusPlusLanguage(),
    const JavaLanguage(),
    const DartLanguage(),
    const CSharpLanguage(),
    const PhpLanguage(),
  ];

  int? selectedScreen;

  void _onViewScreen(int index) {
    setState(() {
      selectedScreen = selectedScreen != index ? index : null;
    });
  }

  static final _viewSubjectScreen = [
    const AppDevPage(),
    const GameDevPage(),
    const WebDevPage(),
    const MachineDevPage(),
  ];

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
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(10.0),
            separatorBuilder: (_, __) => const SizedBox(width: 10.0),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => OutlinedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: selectedScreen == index
                        ? selectedButtonColor
                        : selectedButtonColor,
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
                Languages.values[index].value,
                style: TextStyle(
                  color: selectedScreen == index
                      ? selectedButtonTextColor
                      : selectedDefaultButtonTextColor,
                ),
              ),
            ),
            itemCount: Languages.values.length,
          ),
        ),
        Expanded(
          flex: 10,
          child: selectedScreen == null
              ? GradientContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.5),
                      child: Text(
                        'Courses',
                        style: TextStyle(
                          color: Color(0xFF0C356A),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
                              color: darkBlue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: const BorderSide(
                                  color: Color(0xFF096E9C6), // Set the color using Color object
                                  width: 3,
                                ),
                              ),
                              child: InkWell(
                                onTap: () => _onViewSubject(index),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5, top: 10, right: 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            SubjectSection.values[index].imagePath,
                                            height: 100,
                                            width: 100,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 20), // spacing between the image and the text
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              nameOfCourses,
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFFFFCC70),
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                            ),
                                            const SizedBox(height: 5), // additional space
                                            Flexible(
                                              child: Text(
                                                // Subtext here
                                                index == 0
                                                    ? "Craft intuitive experiences for handheld devices."
                                                    : index == 1
                                                    ? "Bring virtual worlds to life with code."
                                                    : index == 2
                                                    ? "Build the digital landscapes of tomorrow."
                                                    : "Empower computers to learn and adapt autonomously.",
                                                style: const TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white, // Change color if necessary
                                                ),
                                              ),
                                            ),
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