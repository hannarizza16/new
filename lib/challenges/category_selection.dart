import 'package:first_project/gradient_background.dart';
import 'package:flutter/material.dart';
import '../firebase/features/user_auth/presentation/pages/home_page.dart';
import 'categories.dart';
import 'expertise_level_selection.dart';

class CategorySelection extends StatefulWidget {
  const CategorySelection({Key? key}) : super(key: key);

  @override
  _CategorySelectionState createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _navigateToHomePage(context);
        return false;
      },
      child: Scaffold(
        body: Stack(
          children: [
            // Layer 1: Gradient Container
            GradientContainer(
              child: Container(),
            ),
            Positioned(
              left: 0, // Align left
              top: 0, // Align top
              right: 0, // Align right
              bottom: 0, // Align bottom
              child: Opacity(
                opacity: 0.2, // Specify the opacity value here (0.0 - 1.0)
                child: Image.asset(
                  'assets/overlay/2.jpg', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Layer 3: Cards and other widgets
            CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.only(top: 18, left: 16, right: 16),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                          (context, index) {
                        final category = getQuizCategories()[index];
                        return Padding(
                          padding: EdgeInsets.only(bottom: 18),
                          child: Card(
                            elevation: 10,
                            color: Color(0xFF0C356A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: InkWell(
                              onTap: () {
                                _navigateToExpertiseLevels(context, category.category);
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
                                              padding: EdgeInsets.only(left: 20.0),
                                              child: Text(
                                                category.category,
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  color: Color(0xFFFFCC70),
                                                  letterSpacing: 1.0,

                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Padding(
                                              padding: EdgeInsets.only(left: 20.0),
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
                                        _buildDesignElement(),
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
          ],
        ),
      ),
    );
  }
}


  Widget _buildDesignElement() {
    return Container(
      width: 25,
      height: 130,
      decoration: BoxDecoration(
        color: Color(0xFF096E9C6),
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
          (route) => false,
    );
  }

