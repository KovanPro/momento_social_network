import 'dart:developer';

import 'package:flutter/material.dart';
import '../others/colors.dart';

class MainLoginscreen extends StatefulWidget {
  const MainLoginscreen({super.key});

  @override
  State<MainLoginscreen> createState() => _MainLoginscreen();
}

class _MainLoginscreen extends State<MainLoginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            const Image(
              width: 296,
              height: 265,
              image: AssetImage('assets/images/mainloginlogo.png'),
            ),
            const SizedBox(
              height: 65,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: ColorConstants.loginbtnPrimaryColor,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
              ),
              child: SizedBox(
                  width: 292,
                  height: 55,
                  child: Row(children: const [
                    Image(
                      width: 38,
                      height: 38,
                      image: AssetImage('assets/images/googlelogo.png'),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Login with Google',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Spacer(),
                  ])),
              onPressed: () {
                debugPrint("login with google");
              },
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: 330,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: ColorConstants.loginbtnSecondaryColor,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                ),
                child: const Text(
                  'Sign up with email or phone number',
                  style: TextStyle(
                    color: ColorConstants.logintxtColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: () {
                  debugPrint("Sign up with email or phone");
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SizedBox(
                    width: 170,
                    height: 20,
                    child: Divider(
                      thickness: 2,
                      indent: 30,
                      endIndent: 0,
                      color: ColorConstants.linecolor,
                    ),
                  ),
                  SizedBox(
                    width: 26,
                    child: Text(
                      " Or ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.loginsecondtxtcolor),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 20,
                    child: Divider(
                      thickness: 2,
                      endIndent: 0,
                      color: ColorConstants.linecolor,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    " Already have an account? ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.loginsecondtxtcolor),
                  ),
                  InkWell(
                    child: const Text(
                      " Sign in ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.loginbtnPrimaryColor),
                    ),
                    onTap: () {
                      debugPrint("signin");
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
