import 'package:first_project/enums/enums.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    required this.onUpdateCategory,
    super.key,
  });

  final ValueChanged<Categories> onUpdateCategory;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final category = Categories.values[index];

        return Column ( children: [ const SizedBox(height: 70),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 80, right: 80),
          child: OutlinedButton(
            //SUBJECT CATEGORY STYLE
            style: ButtonStyle(
              side: MaterialStateProperty.all(const BorderSide(
                color: Colors.black, // BORDER OF BEGINNER, INT, ADV
                width: 2.0,
              )),
              foregroundColor: MaterialStateProperty.all(
                  Colors.black54), // Default text color
              overlayColor: MaterialStateProperty.all(
                  Colors.lightBlue[200]), // Color when long-pressed
            ),
            onPressed: () => onUpdateCategory(category),
            child: ListTile(
              title: Center(
                child: RichText(
                  text: TextSpan(
                    text: category.text,
                    style: const TextStyle(
                      fontSize: 24, // Change the font size
                      color: Colors.black, // Change the text color
                      fontWeight: FontWeight.bold, // Apply font weight
                      letterSpacing: 1.5, // Apply letter spacing
                    ),
                  ),
                ),
              ),
            ),
          ),
        )]);
      },
      itemCount: Categories.values.length,
    );
  }
}
