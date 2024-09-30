import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String title;
  final double height;
  
  const CommonButton({

    required this.height,
    required this.onPressed,
    required this.title,
    super.key
    });
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 80),
        
      ),
       child:Text(
        style: TextStyle(color:Colors.white),
        title
       )
       
       );
  }
}