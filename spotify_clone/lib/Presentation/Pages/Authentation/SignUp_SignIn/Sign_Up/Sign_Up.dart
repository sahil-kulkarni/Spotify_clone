import 'package:flutter/material.dart';
import 'package:spotify_clone/Presentation/Pages/Authentation/SignUp_SignIn/Sign_In/Sign_in.dart';
import 'package:spotify_clone/common/widgets/Button/Appbar.dart';
import 'package:spotify_clone/common/widgets/Button/Basic_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  Widget Register_Text() {
    return Text(
      "Register",
      style: TextStyle(
        fontSize: 40,
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget fullNameField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Full Name",
      ),
    );
  }

  Widget EmailField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Email",
      ),
    );
  }

  Widget PasswardField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Passward",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        title: Image.asset(
          "images/logo.png",
          height: 170,
          width: 170,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Register_Text(),
            SizedBox(
              height: 50,
            ),
            fullNameField(),
            SizedBox(
              height: 50,
            ),
            EmailField(),
            SizedBox(
              height: 50,
            ),
            PasswardField(),
            SizedBox(
              height: 50,
            ),
            CommonButton(height: 80, onPressed: () {}, title: "Create Account"),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do you have an Account ?",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                        fontSize: 17),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInPage()));
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
