library particles_fly;

import 'package:flutter/material.dart';
import '../../../../../main_profile/particles_fly.dart';

class ConditionPage extends StatefulWidget {
  const ConditionPage({Key? key});

  @override
  State<ConditionPage> createState() => _ConditionPageState();
}

class _ConditionPageState extends State<ConditionPage> {
  bool _isResettingPassword = false;
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ParticlesFly(
              height: size.height,
              width: size.width,
              connectDots: true,
              numberOfParticles: 20,
              lineColor: Colors.black26,
              particleColor: Colors.blue,
            ),

            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30, top: 100, bottom: 20, right: 30),
                  child: Text(
                    'Terms and Condition',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
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