import 'package:flutter/material.dart';
import 'package:simple_flutter/approval.dart';
import 'package:simple_flutter/profile.dart';

void main() {
  runApp(OTPVerificationScreen());
}

class OTPVerificationScreen extends StatefulWidget {
  @override
  _OTPVerificationScreenState createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());
  List<TextEditingController> controllers = List.generate(6, (index) => TextEditingController());
  List<String> otpDigits = List.filled(6, '');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '${DateTime.now().hour}:${DateTime.now().minute}',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.signal_cellular_alt),
                      Icon(Icons.wifi),
                      Icon(Icons.battery_full),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 60), // Increased spacing here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'OTP Verification',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Urbanist',
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Enter the verification code we just sent on your email address',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF838BA1), // #838BA1
                      fontWeight: FontWeight.normal,
                      fontFamily: 'SF Pro',
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 6; i++)
                        Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF35C2C1)), // #35C2C1
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: TextField(
                              focusNode: focusNodes[i],
                              controller: controllers[i],
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              maxLength: 1,
                              onChanged: (value) {
                                otpDigits[i] = value;
                                if (value.isNotEmpty && i < 5) {
                                  FocusScope.of(context).requestFocus(focusNodes[i + 1]);
                                }
                              },
                              onSubmitted: (value) {
                                if (value.isEmpty && i > 0) {
                                  FocusScope.of(context).requestFocus(focusNodes[i - 1]);
                                }
                              },
                              decoration: InputDecoration(
                                counter: Offstage(),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Approval()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(40 * 6 + 5 * 6, 50)),
                ),
                child: Text('Verify'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
