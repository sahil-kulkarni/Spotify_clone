
import 'package:flutter/material.dart';

class BasicAppbar extends StatelessWidget implements PreferredSizeWidget{

  final Widget ? title;
  final bool Hideback ;

  const BasicAppbar({
     this.title,
     this.Hideback = false,
    super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: title ?? Text(''),
      centerTitle: true,
      
      leading: Hideback ? null : IconButton(onPressed: () {
        Navigator.pop(context);
      },
       icon: Container(
        // height: 50,
        // width: 50,
        decoration: BoxDecoration(
          // color: Colors.black.withOpacity(0.1),
          shape: BoxShape.circle
        ),
        child: Icon(Icons.arrow_back_ios,),
       ),
       
       ),

    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}