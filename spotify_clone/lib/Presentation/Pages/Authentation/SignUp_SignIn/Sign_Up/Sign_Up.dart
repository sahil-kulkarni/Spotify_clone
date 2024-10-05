import 'package:flutter/material.dart';
import 'package:spotify_clone/Presentation/Pages/Authentation/SignUp_SignIn/Sign_In/Sign_in.dart';
import 'package:spotify_clone/common/widgets/Button/Appbar.dart';
import 'package:spotify_clone/common/widgets/Button/Basic_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  Widget registerText() {
    return const Text(
      "Register",
      style: TextStyle(
        fontSize: 40,
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget fullNameField() {
    return const TextField(
      decoration: InputDecoration(
        hintText: "Full Name",
      ),
    );
  }

  Widget emailField() {
    return const TextField(
      decoration: InputDecoration(
        hintText: "Email",
      ),
    );
  }

  Widget passwordField() {
    return const TextField(
      obscureText: true, // Add this for password hiding
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
              fullNameField(),
              const SizedBox(height: 50),
              emailField(),
              const SizedBox(height: 50),
              passwordField(),
              const SizedBox(height: 50),
              CommonButton(
                height: 80,
                onPressed: () {},
                title: "Create Account",
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Do you have an Account?",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                        fontSize: 17,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(color: Colors.blue, fontSize: 18),
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
