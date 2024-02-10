import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final String btnText; // here "final" is method of writing function and "string"
  //data type "btnText" name
  final Color btnColor;
  final VoidCallback onPress;
  const CustomButton({super.key,required this.btnText,required this.onPress,this.btnColor=Colors.grey});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: CircleAvatar(
        radius: 30,
        backgroundColor: btnColor,
        child: Text(btnText,style: TextStyle(color: Colors.white,fontSize: 20),),
      ),
    );
  }
}
