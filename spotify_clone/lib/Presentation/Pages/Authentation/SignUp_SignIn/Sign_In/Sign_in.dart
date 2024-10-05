import 'package:flutter/material.dart';
import 'package:spotify_clone/Presentation/Pages/Authentation/SignUp_SignIn/SignUpSignIn.dart';
import 'package:spotify_clone/Presentation/Pages/Authentation/SignUp_SignIn/Sign_Up/Sign_Up.dart';
import 'package:spotify_clone/Presentation/Pages/Home/HomePage.dart';
import 'package:spotify_clone/common/widgets/Button/Appbar.dart';
import 'package:spotify_clone/common/widgets/Button/Basic_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  Widget registerText() {
    return const Text(
      "Sign In",
      style: TextStyle(
        fontSize: 40,
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget usernameField() {
    return const TextField(
      decoration: InputDecoration(
        hintText: "Enter Username Or Email",
      ),
    );
  }

  Widget passwordField() {
    return const TextField(
      obscureText: true, // Hides the password input
      decoration: InputDecoration(
        hintText: "Password",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: BasicAppbar(
        title: Image.asset(
          "images/logo.png",
          height: screenHeight * 0.2, 
          width: screenWidth * 0.5, 
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.1, 
          horizontal: screenWidth * 0.1, 
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              registerText(),
              const SizedBox(height: 50),
              usernameField(),
              const SizedBox(height: 50),
              passwordField(),
              const SizedBox(height: 70),
              CommonButton(
                height: 80,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                title: "Sign In",
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Not A Member?",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                        fontSize: 17,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const RegisterPage()),
                        );
                      },
                      child: const Text(
                        "Register Now",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
