import 'package:flutter/material.dart';
import 'package:spotify_clone/Presentation/Pages/Authentation/SignUp_SignIn/SignUpSignIn.dart';
import 'package:spotify_clone/Presentation/Pages/Authentation/SignUp_SignIn/Sign_Up/Sign_Up.dart';
import 'package:spotify_clone/Presentation/Pages/Home/HomePage.dart';
import 'package:spotify_clone/common/widgets/Button/Appbar.dart';
import 'package:spotify_clone/common/widgets/Button/Basic_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  Widget Register_Text() {
    return Text(
      "Sign In",
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
        hintText: "Enter Username Or Email",
      ),
    );
  }

  Widget EmailField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Password",
      ),
    );
  }

  // Widget PasswardField() {
  //   return TextField(
  //     decoration: InputDecoration(
  //       hintText: "Passward",
  //     ),
  //   );
  // }

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
              height: 70,
            ),
            CommonButton(height: 80,
             onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage(),));
             }, 
             title: "Sign In"
             ),
            

             Padding(
      padding: EdgeInsets.symmetric(
        vertical: 30,
       
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Not A Member ?",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black87,
              fontSize: 17
            ),
          ),
      
          TextButton(onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterPage(),));
          },
           child:Text("Register Now",
           style: TextStyle(
            color: Colors.blue,
            fontSize: 18
           ),
           )
           )
      
        ],
      ),
    )

          ],
        ),
      ),
    );
  }
}
