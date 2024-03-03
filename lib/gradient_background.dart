import 'package:flutter/material.dart';

class YourWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Positioned.fill(
          //   child: Opacity(
          //     opacity: 0.5,
          //     child: Image.asset(
          //       'assets/overlay/2.jpg',
          //       fit: BoxFit.fitHeight,
          //     ),
          //   ),
          // ),
          GradientContainer(
            child: Positioned.fill(
              child: YourContentWidget(), // Replace with your content widget
            ),
          ),
        ],
      ),
    );
  }
}

class GradientContainer extends StatefulWidget {
  final Widget? child;
  final double? width;

  const GradientContainer({Key? key, this.width, this.child}) : super(key: key);

  @override
  _GradientContainerState createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer>
    with SingleTickerProviderStateMixin {
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
      begin: Color(0xFFDCF2F1),
      end: Color(0xFFDCF2F1),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {


    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Stack(
          children: [
            Container(
              width: widget.width ?? double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    _animation.value ?? Color(0xFF85F4FF),
                    Color(0xFFC5FFF8),
                    _animation.value ?? Color(0xFF85F4FF),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: widget.child,
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

// YourContentWidget definition
class YourContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace with your content widget
    return Container(
      // Your content here
    );
  }
}
