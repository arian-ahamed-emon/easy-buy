import 'package:easy_buy/ui/screens/main_bottom_nav_bar_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                      'Create an account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
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
                child: buildSignUpSection(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildSignUpSection() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          const TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: "First Name",
            ),
          ),
          const SizedBox(height: 10),
          const TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: "Last Name",
            ),
          ),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email Address",
            ),
          ),
          const SizedBox(height: 10),
          const TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: "Phone Number",
            ),
          ),
          const SizedBox(height: 10),
          const TextField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              labelText: "Password",
            ),
          ),
          const SizedBox(height: 10),
          const TextField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              labelText: "Confirm Password",
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              fixedSize: const Size.fromWidth(550),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
            ),
            onPressed: _onTapSignUpButton,
            child: const Text(
              "SignUp",
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          TextButton(
            onPressed: _onTapSignInButton,
            child: const Text(
              "Have an account?SignIn",
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

  void _onTapSignInButton() {
    Navigator.pop(context);
  }

  void _onTapSignUpButton() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const MainBottomNavBarScreen(),
        ),
        (_) => false);
  }
}
