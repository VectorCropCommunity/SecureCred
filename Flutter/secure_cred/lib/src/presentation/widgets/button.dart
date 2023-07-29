import 'package:flutter/material.dart';
import 'package:secure_cred/src/core/color.dart';

class AppPrimaryButton extends StatelessWidget {
  final String name;
  final double width;
  final double height;
  final Color buttonColor ;
  final Color fontColor ;
  final VoidCallback onTap;

   const AppPrimaryButton({
     Key? key,
     required this.buttonColor,
    required this.width,
    required this.height,
    required this.onTap, 
    required this.name, required this.fontColor,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
                  onTap:  onTap,                  
                  child: Container(
                    height:height,
                    width:width,
                    // margin: EdgeInsets.only(
                    //   top: MediaQuery.of(context).size.width * .0356,
                    //   // left: MediaQuery.of(context).size.width * .056,
                    //   // right: MediaQuery.of(context).size.width * .056,
                    //   bottom: MediaQuery.of(context).size.width * .0256,
                    // ),
                 decoration: ShapeDecoration(
color:Kcolor.red,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(10),
),
),
                    child:  Center(
                      child: Text(name,
                        style:  TextStyle(
                            color: fontColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                );
  }
}

