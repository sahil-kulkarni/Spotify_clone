import 'package:flutter/material.dart';
import 'package:spotify_clone/common/widgets/Button/Appbar.dart';
import 'package:spotify_clone/core/configue/theme/AppColors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  late TabController tabController ;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    Widget HomeTopCard() {
      return Center(
        child: SizedBox(
          height: 140,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  child: Image(
                    image: AssetImage("images/Frame.png"),
                    
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    child: Image(
                      image: AssetImage("images/belli-destop.png",),
                    
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget Tabs(){
      return TabBar(
        controller: tabController,
        padding: EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 20
        ),
        // isScrollable: true,
        indicatorColor:AppColors.primay,
        tabs: [
          Text(
            "News",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16
            ),
          ),

          Text(
            "Videos",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16
            ),
          ),

          Text(
            "Artist",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16
            ),
          ),

          Text(
            "Podcast",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: Column(
        children: [
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Container(
          //       margin: EdgeInsets.only(left: 10),
          //       child: Icon(
          //         Icons.search,
          //         size: 35,
          //         color: Colors.black54,
          //       ),
          //     ),
          //     SizedBox(
          //       width: 90,
          //     ),
          //     Container(
          //       child: Image(
          //         image: AssetImage("images/logo.png"),
          //         height: 160,
          //         width: 160,
          //       ),
          //     ),
          //     SizedBox(
          //       width: 65,
          //     ),
          //     Container(
          //       child: Icon(
          //         Icons.more_vert,
          //         size: 35,
          //         color: Colors.black54,
          //       ),
          //     )
          //   ],
          // ),

          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25
            ),
            child: BasicAppbar(
              
              title: Image(image:AssetImage(
                "images/logo.png", ),
                height: 170,
                width: 170,
                
                ),
            
            ),
          ),

          HomeTopCard(),
         
          Tabs(),
        ],
      ),
    );
  }
}
