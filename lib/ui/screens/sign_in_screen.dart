import 'package:easy_buy/ui/screens/forgot_password_email_screen.dart';
import 'package:easy_buy/ui/screens/main_bottom_nav_bar_screen.dart';
import 'package:easy_buy/ui/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 170,
              width: 460,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              child: Container(
                height: mediaQuery.size.height,
                width: mediaQuery.size.width,
                color: Colors.white,
                child: buildSignInSection(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildSignInSection() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email or Phone Number",
            ),
          ),
          const SizedBox(height: 10),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
            ),
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: _onTapForgotButton,
            child: const Text(
              "Forgot Password?",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              fixedSize: const Size.fromWidth(550),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
            ),
            onPressed: _onTapLoginButton,
            child: const Text(
              "Login",
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Continue with social media & OTP",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          OverflowBar(
            alignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/fb.png',
                  height: 50,
                  width: 50,
                ),
                color: Colors.blue,
                iconSize: 40,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/gg.png',
                  height: 50,
                  width: 50,
                ),
                color: Colors.red,
                iconSize: 40,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/ph.png',
                  height: 50,
                  width: 50,
                ),
                color: Colors.lightBlue,
                iconSize: 40,
              ),
            ],
          ),
          TextButton(
            onPressed: _onTapSignUpButton,
            child: const Text(
              "Don't have an account?SignUp",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  void _onTapSignUpButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      ),
    );
  }

  void _onTapForgotButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ForgotPasswordEmailScreen(),
      ),
    );
  }

  void _onTapLoginButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MainBottomNavBarScreen(),
      ),
    );
  }
}
