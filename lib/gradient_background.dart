import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          width: widget.width ?? double.infinity,
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
          child: widget.child,
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
