import 'package:flutter/material.dart';
import 'package:secure_cred/src/core/color.dart';
import 'package:secure_cred/src/core/images.dart';
import 'package:secure_cred/src/presentation/widgets/button.dart';
import 'package:secure_cred/src/presentation/widgets/textfield.dart';
import 'package:secure_cred/utils/router_helper.dart';

class ScreenSignup extends StatelessWidget {
  const ScreenSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
           'Sign Up',
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: ()=> Routes.goBack(),
          color: Colors.black,
          iconSize:  MediaQuery.sizeOf(context).width*0.05641,
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                     height: MediaQuery.sizeOf(context).height ,
                            width: MediaQuery.sizeOf(context).width,
                            
                    child: Column(
                      children: [
                         SizedBox(
                          height: MediaQuery.sizeOf(context).height * .0947,
                        ),
                        Center(
                          child: SizedBox(
                          height:MediaQuery.sizeOf(context).width*0.6307,
                            
                            child: Image.asset(KImage.login)),
                        ),
                      ],
                    ),
                  ),
               
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: MediaQuery.sizeOf(context).width*0.5897,),
                        Container(
                            height:  MediaQuery.sizeOf(context).width*2.1641025/ MediaQuery.sizeOf(context).height > 1? null: MediaQuery.sizeOf(context).height-MediaQuery.sizeOf(context).width*0.5897  ,
                            width: MediaQuery.sizeOf(context).width,
                            padding:  EdgeInsets.only(
                                top: MediaQuery.sizeOf(context).width*0.133, bottom: MediaQuery.sizeOf(context).width*0.1384, left: MediaQuery.sizeOf(context).width*0.0871, right: MediaQuery.sizeOf(context).width*0.0871),
                            decoration: BoxDecoration(
                                color: Kcolor.darkBlue,
                                borderRadius:  BorderRadius.only(
                                    topLeft: Radius.circular(MediaQuery.sizeOf(context).width*0.0871,),
                                    topRight: Radius.circular(MediaQuery.sizeOf(context).width*0.0871,))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Create Your Account",
                                  style: TextStyle(
                                      color: Kcolor.white,
                                      fontSize: MediaQuery.sizeOf(context).width*0.0717,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Poppins"),
                                ),
                                 SizedBox(
                                  height: MediaQuery.sizeOf(context).width*0.0179,
                                ),
                                 Text(
                                  "Let’s create an secure account",
                                  style: TextStyle(
                                      color: Color(0x80FFFFFF),
                                      fontSize: MediaQuery.sizeOf(context).width*0.0384,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins"),
                                ),
                                 SizedBox(
                                  height: MediaQuery.sizeOf(context).width*0.1076,
                                ),
                                // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                                AppTextField(
                                  controller: TextEditingController(),
                                  hintText: "Enter Name",
                                  onChanged: (String) {},
                                ),
                                 SizedBox(
                                  height: MediaQuery.sizeOf(context).width*0.03076,
                                ),  AppTextField(
                                  controller: TextEditingController(),
                                  hintText: "Enter Email",
                                  onChanged: (String) {},
                                ),
                                 SizedBox(
                                  height: MediaQuery.sizeOf(context).width*0.03076,
                                ),
                                 PasswordField(renter: false,),
                                
                             SizedBox(
                                  height: MediaQuery.sizeOf(context).width*0.03076,
                                ),
                                 PasswordField(renter: true,),
                                
                            
                                 SizedBox(
                                  height: MediaQuery.sizeOf(context).width*0.0897,
                                ),
                                AppPrimaryButton(
                                  fontColor: Kcolor.white,
                                  name: "Create an account",
                                  onTap:  () => Routes.pushNamed(Routes.login),
                                  width: MediaQuery.of(context).size.width * .872,
                                  height: MediaQuery.of(context).size.width * .128,
                                  buttonColor: Kcolor.red,
                                ),
                                 SizedBox(
                                  height: MediaQuery.sizeOf(context).width*0.0564,
                                ),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                     "Already have an account? ",
                                      style: TextStyle(
                                          color:Kcolor.white,
                                          fontSize: MediaQuery.sizeOf(context).width*0.0384,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Poppins"),
                                    ),
                                    GestureDetector(
                                      onTap:  () => Routes.pushNamed(Routes.login),
                                      child: Text(
                                       "Login now",
                                        style: TextStyle(
                                            color: Kcolor.red,
                                            fontSize: MediaQuery.sizeOf(context).width*0.0384,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Poppins"),
                                      ),
                                    ),
                                  ],
                                ),
                               
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
