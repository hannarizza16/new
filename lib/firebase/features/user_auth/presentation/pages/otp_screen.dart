import 'package:first_project/firebase/features/user_auth/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({Key? key}) : super(key: key);

  static const String tOtpTitle = "Enter OTP";
  static const String tOtpSubTitle = "Please enter the verification code";
  static const String tOtpMessage =
      "For support, email us at rtucodecultivator@gmail.com";
  static const String tNext = "NEXT";

  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tOtpTitle,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.0),
            ),
            Text(
              tOtpSubTitle.toUpperCase(),
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 40.0),
            Text(tOtpMessage, textAlign: TextAlign.center),
            SizedBox(height: 20.0),
            TextField(
              controller: otpController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter OTP',
              ),
              onSubmitted: (code) => print("OTP is => $code"),
            ),
            SizedBox(height: 20.0),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainHomePage()),
                  );
                  print("OTP is => ${otpController.text}");
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF30CBF8),
                ),
                child: Text(
                  tNext,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
