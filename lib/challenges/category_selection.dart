import 'package:flutter/material.dart';
import '../firebase/features/user_auth/presentation/pages/home_page.dart';
import 'categories.dart';
import 'expertise_level_selection.dart';

class CategorySelection extends StatelessWidget {
  const CategorySelection ({Key? key});
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Handle the back button press
        _navigateToHomePage(context);
        return false;
      },
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Select a Category'),
        //   backgroundColor: Color(0xFF164863), // Custom AppBar color
        // ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFE0F4FF), Color(0xFF87C4FF)], //background color
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.only(
                  top: 18,
                  left: 16,
                  right: 16,
                ),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (context, index) {
                      final category = getQuizCategories()[index];
                      return Padding(
                        padding: EdgeInsets.only(bottom: 18),
                        child: Card(
                          elevation: 10,
                          color: Color(0xFF0C356A), //cards color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: InkWell(
                            onTap: () {
                              _navigateToExpertiseLevels(context, category.name);
                            },
                            child: Container(
                              height: 130,
                              child: Hero(
                                tag: 'category-$index',
                                child: Material(
                                  color: Colors.transparent,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 20.0,
                                            ),
                                            child: Text(
                                              category.name,
                                              style: TextStyle(
                                                fontSize: 30,
                                                color: Color(0xFFFFCC70), //FONT COLOR FOR HEADING LANGUAGES
                                                letterSpacing: 1.0,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 20.0,
                                            ),
                                            child: Text(
                                              '${category.subtext.join(', ')}',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontStyle: FontStyle.italic,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      _buildDesignElement(), // Design element
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    childCount: getQuizCategories().length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDesignElement() { //line pink on the buttons
    return Container(
      width: 20, // Set the width of the design element here
      height: 130, // Set the height of the design element to match the card height
      decoration: BoxDecoration(
        color: Color(0xFFFFCC70), // Set the color of the design element here
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
    );
  }

  void _navigateToExpertiseLevels(BuildContext context, String category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ExpertiseLevelSelection(category: category),
      ),
    );
  }

  void _navigateToHomePage(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => MainHomePage(),
      ),
          (route) => false, // This line clears the navigation stack
    );
  }
}
