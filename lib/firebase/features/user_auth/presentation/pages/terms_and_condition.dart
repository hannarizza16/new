library particles_fly;

import 'package:flutter/material.dart';
import '../../../../../main_profile/particles_fly.dart';

class ConditionPage extends StatefulWidget {
  const ConditionPage({Key? key});

  @override
  State<ConditionPage> createState() => _ConditionPageState();
}

class _ConditionPageState extends State<ConditionPage> {
  // bool _isResettingPassword = false;
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
            Center(
              child:  Padding(
                  padding: const EdgeInsets.only(top: 90),
              child: Text(
                'Terms and Conditions',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),

              ),
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 150),
                child: Container(
                  width: size.width * 0.9,
                  height: size.height * 0.6,
                  padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3))
                      ]),
                  child: ListView(
                      physics: AlwaysScrollableScrollPhysics(),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            'Terms and Conditions',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                            'These Terms and Conditions govern your use of the mobile application ("CodeX") provided by CodeX Team. By accessing or using the App, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use the App.',
                            style: TextStyle(
                              fontSize: 16,
                            )),

                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20,),
                          child: Text(
                            '1. Acceptance of Terms',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                            'By using the CodeX App, you agree to comply with and be bound by these Terms. If you do not agree with any part of these Terms, you must not use the App.',
                            style: TextStyle(
                              fontSize: 16,
                            )),

                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20,),
                          child: Text(
                            '2. Privacy Policy',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                            'Your use of the App is also subject to our Privacy Policy, which is incorporated by reference into these Terms. Please review our Privacy Policy to understand how we collect, use, and disclose information about you.',
                            style: TextStyle(
                              fontSize: 16,
                            )),

                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20,),
                          child: Text(
                            '3. User Accounts',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                            'You may be required to create an account to use certain features of the App. You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account. You agree to provide accurate, current, and complete information during the registration process and to update such information to keep it accurate, current, and complete.',
                            style: TextStyle(
                              fontSize: 16,
                            )),

                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20,),
                          child: Text(
                            '4. Intellectual Property Rights',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                            'The App and its original content, features, and functionality are owned by the Company and are protected by copyright, trademark, patent, trade secret, and other intellectual property or proprietary rights laws.',
                            style: TextStyle(
                              fontSize: 16,
                            )),

                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20,),
                          child: Text(
                            '5. Prohibited Activities',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                            'You agree not to engage in any of the following activities:'
                                '\n\n• Use the App for any unlawful purpose or in any way that violates these Terms;'
                                '\n\n• Attempt to gain unauthorized access to any portion of the App, other user accounts, or any other systems or networks connected to the App;'
                                '\n\n• Modify, adapt, or hack the App or modify another website or mobile application to falsely imply that it is associated with the App;'
                                '\n\n• Reverse engineer, decompile, disassemble, or otherwise attempt to discover the source code of the App;'
                                '\n\n• Interfere with or disrupt the operation of the App or any servers or networks connected to the App;'
                                '\n\n• Use any robot, spider, site search/retrieval application, or other automated device, process, or means to access, retrieve, scrape, or index any portion of the App or its content;'
                                '\n\n• Use the App in any manner that could interfere with, disrupt, negatively affect, or inhibit other users from fully enjoying the App or that could damage, disable, overburden, or impair the functioning of the App in any manner;',
                            style: TextStyle(
                              fontSize: 16,
                            )),

                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20,),
                          child: Text(
                            '6. Termination',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                            'We reserve the right to terminate or suspend your access to the App immediately, without prior notice or liability, for any reason whatsoever, including without limitation if you breach these Terms. Upon termination, your right to use the App will immediately cease.',
                            style: TextStyle(
                              fontSize: 16,
                            )),

                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20,),
                          child: Text(
                            '7. Disclaimer of Warranties',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                            'The App is provided on an "as is" and "as available" basis, without any warranties of any kind, either express or implied. We do not warrant that the App will be uninterrupted or error-free, that defects will be corrected, or that the App is free of viruses or other harmful components. You use the App at your own risk.',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
