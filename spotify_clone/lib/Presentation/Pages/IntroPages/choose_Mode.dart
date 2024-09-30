import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/Presentation/Pages/Authentation/SignUp_SignIn/SignUpSignIn.dart';
import 'package:spotify_clone/Presentation/Pages/IntroPages/block/theme_cybit.dart';
import 'package:spotify_clone/common/widgets/Button/Basic_button.dart';


class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/ThemeImg.png"),
                    fit: BoxFit.cover)),
          ),
          Container(color: Colors.black.withOpacity(0.20)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset("images/logo.png")),
                // SizedBox(height: 10,),
                Spacer(),

                Text(
                  "Choose Mode",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.only(left: 70),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print("theme changed");
                              context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                            },
                            child: ClipOval(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Color(0xff30393c).withOpacity(0.5),
                                       shape: BoxShape.circle,
                                       ),
                                       child: Image(image: AssetImage("images/Moon.png")),
                                ),
                              ),
                            ),
                          ),
                           SizedBox(height: 15,),
                          Text("Dark Mode",
                          style: TextStyle(
                            color: Colors.white
                          ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                            },
                            child: ClipOval(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  //  margin: EdgeInsets.only(left: 50),
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Color(0xff30393c).withOpacity(0.5),
                                       shape: BoxShape.circle
                                       ),
                                       child: Icon(Icons.sunny, size: 38,color: Colors.white,)
                                       
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Text("light Mode",
                          style: TextStyle(
                            color: Colors.white
                          ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 40,
                ),

                CommonButton(
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          ));
                    },
                    title: 'Continue')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
