
import 'package:flutter/material.dart';
import 'package:spotify_clone/Presentation/Pages/IntroPages/choose_Mode.dart';
import 'package:spotify_clone/common/widgets/Button/Basic_button.dart';
import 'package:spotify_clone/core/configue/theme/AppColors.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 40
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/FirstImg.png"),
                fit: BoxFit.cover
                )
            ),
            
          ),

          Container(
            color: Colors.black.withOpacity(0.20)
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 40
            ),
            child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset("images/logo.png")
                    ),
                    // SizedBox(height: 10,),
                    Spacer(),
                    Text(
                      "Enjoy your taste in music",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),
                    ),
                    SizedBox(height: 30,),
            
                      Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.",
                      style: TextStyle(
                        color:AppColors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height:50,),
                    
                    CommonButton(
                      height: 60, 
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseModePage(),));
                        
                      },
                       title: 'Get Started'
                       )
            
                ],
              ),
          ),
        ],
      ),

    );
  }
}