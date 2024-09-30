import 'package:flutter/material.dart';
import 'package:spotify_clone/Presentation/Pages/Authentation/SignUp_SignIn/Sign_Up/Sign_Up.dart';
import 'package:spotify_clone/Presentation/Pages/Authentation/SignUp_SignIn/Sign_In/Sign_in.dart';
import 'package:spotify_clone/Presentation/Pages/Authentation/helper/is_dark_mode.dart';
import 'package:spotify_clone/common/widgets/Button/Appbar.dart';
import 'package:spotify_clone/common/widgets/Button/Basic_button.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.darkBackground,
      body: Stack(
        children: [
          BasicAppbar(),
          Align(
            alignment: Alignment.topRight,
            child: Image(image: AssetImage("images/top_pattern.png")),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image(image: AssetImage("images/bottom_pattern.png")),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image(image: AssetImage("images/Register.png")),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(image: AssetImage("images/logo.png")),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Enjoy listening to music",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Spotify is a proprietary Swedish audio streaming and media services provider ",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(52, 0, 0, 0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                          child: CommonButton(
                              height: 60,
                               onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(),));
                               }, 
                               title: "Register")
                               ),

                      SizedBox(width: 20,),

                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                          }, 
                          child: Text("Sign in",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color:context.isDarkMode ? Colors.white : Colors.black,
                        
                          ),)
                          ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
