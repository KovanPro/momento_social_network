import 'package:flutter/material.dart';
import '../others/colors.dart';

class SigninActive extends StatefulWidget {
  const SigninActive({super.key});

  @override
  State<SigninActive> createState() => _SigninActive();
}

class _SigninActive extends State<SigninActive> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 70, 0, 0),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      size: 35,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: const [
                SizedBox(width: 24),
                Image(
                  width: 60,
                  height: 52,
                  image: AssetImage('assets/images/splashlogo.png'),
                ),
                SizedBox(width: 8),
                Text(
                  'Momento',
                  style: TextStyle(
                    fontFamily: 'sans',
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 24,
                  height: 30,
                ),
                Text(
                  " Log in to make your memories. ",
                  style: TextStyle(
                      fontFamily: 'sans',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.loginsecondtxtcolor),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                decoration: BoxDecoration(
                    color: ColorConstants.loginbtnSecondaryColor,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Username, email or phone number',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                decoration: BoxDecoration(
                    color: ColorConstants.loginbtnSecondaryColor,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Spacer(),
                  Text(
                    "forgot password?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorConstants.loginbtnPrimaryColor,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
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
                    Spacer(),
                    Text(
                      'Login ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                  ])),
              onPressed: () {
                debugPrint("login with google");
              },
            ),
            const SizedBox(height: 12),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    " don't have an account? ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  InkWell(
                    child: const Text(
                      " Sign up ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.loginbtnPrimaryColor),
                    ),
                    onTap: () {
                      debugPrint("signup");
                    },
                  )
                ],
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
                    width: 120,
                    height: 20,
                    child: Divider(
                      thickness: 2,
                      indent: 30,
                      endIndent: 0,
                      color: ColorConstants.linecolor,
                    ),
                  ),
                  SizedBox(
                    child: Text(
                      " or login with",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: ColorConstants.loginsecondtxtcolor),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 20,
                    child: Divider(
                      thickness: 2,
                      indent: 0,
                      endIndent: 30,
                      color: ColorConstants.linecolor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(),
                IconButton(
                  icon: Image.asset('assets/images/Google.png'),
                  iconSize: 60,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/images/Apple.png'),
                  iconSize: 60,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/images/Facebook.png'),
                  iconSize: 60,
                  onPressed: () {},
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
