// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:secure_cred/src/core/color.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String) onChanged;

  const AppTextField({
     Key? key,
    required this.controller,
    required this.hintText,
    required this.onChanged,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                  height: MediaQuery.of(context).size.width * .128,
                  width: MediaQuery.of(context).size.width * .872,
                  child: TextField(
                     controller: controller,
                      onChanged: onChanged,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      color:  Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                    cursorColor:  Colors.grey,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Kcolor.darkgrayBlue,
                      focusedBorder: OutlineInputBorder(
                          borderSide:  BorderSide(color: Kcolor.textGrey),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:  BorderSide(color: Kcolor.textGrey),
                          borderRadius: BorderRadius.circular(10)),
                      hintText:  hintText,                      
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                );
  }
}


class PasswordField extends StatefulWidget {
  
  final bool renter;
  const PasswordField({ Key? key, required this.renter }) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
                  height: MediaQuery.of(context).size.width * .128,
                  width: MediaQuery.of(context).size.width * .872,
                  child: TextField(
                    
      obscureText: !_passwordVisible,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      color:  Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                    cursorColor:  Colors.grey,
                    decoration: InputDecoration(
                      
                      filled: true,
                      fillColor: Kcolor.darkgrayBlue,
                      focusedBorder: OutlineInputBorder(
                          borderSide:  BorderSide(color: Kcolor.textGrey),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:  BorderSide(color: Kcolor.textGrey),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: widget.renter ? "Re-Enter Password":"Password",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right:22.0),
                        child: GestureDetector(
                           onTap: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                          child: Icon(_passwordVisible ? Icons.remove_red_eye_sharp: Icons.remove_red_eye_outlined,
                          color:  Colors.grey,
                          size: 17,)),
                      )
                        // child: SvgPicture.asset(_passwordVisible ? AppIcons.visiblity: AppIcons.visiblityOff ,fit: BoxFit.scaleDown,))
                    ),
                  ),
                );
  }
}

