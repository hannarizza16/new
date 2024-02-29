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
  late AnimationController _controller;
  late Animation<Color?> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(reverse: true);
    _animation = ColorTween(
      begin: Color(0xFF00A9FF),
      end: Color(0xFF71DFE7),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _navigateToHomePage(context);
        return false;
      },
      child: Scaffold(
        body: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    _animation.value ?? Color(0xFF71DFE7),
                    Color(0xFF94DAFF),
                    _animation.value ?? Color(0xFF9ED5C5),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: CustomScrollView(
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
                                                padding: EdgeInsets.only(left: 20.0),
                                                child: Text(
                                                  category.name,
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
            );
          },
        ),
      ),
    );
  }

  Widget _buildDesignElement() {
    return Container(
      width: 20,
      height: 130,
      decoration: BoxDecoration(
        color: Color(0xFFFFCC70),
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
}
