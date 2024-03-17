import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_home_ui/utils/app_colors.dart';
import 'package:smart_home_ui/widgets/pet_page_widgets/bottom_button_widget.dart';
import 'package:smart_home_ui/widgets/welcome_page_widgets/custom_circle.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryWhiteColor,
        body: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Stack(
                  children: [

                    Container(
                      // height: 100,
                      // width: 150,
                      // padding: const EdgeInsets.only(left: 16.0, right: 40),
                      // margin: const EdgeInsets.only(left: 16.0),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [
                                // Color(0xFF2b2b33),
                                // Color(0xFF2d3882),
                                // Color(0xFF948b7b),
                                Color(0xFF6f6a59),
                                Color(0xFFddd6cc),
                              ],
                              begin: FractionalOffset(0.0, 1.0),
                              end: FractionalOffset(1.0, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                    ),
                    Container(
                      // height: 350,
                      // padding: const EdgeInsets.symmetric(
                      //     horizontal: 20, vertical: 15),
                      margin: EdgeInsets.only(top: 35),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/images/welcome_image.jpeg"),
                          // fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.only(
                        //     topLeft: Radius.circular(30),
                        //     topRight: Radius.circular(30))
                      ),
                    ),
                    /*CustomPaint(
                      size: Size(200, 200),
                      painter: CirclePainter(),
                    ),*/
                  ],
                ),
              ),
              Container(
                  // height: 250,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 15),
                        Text(
                          'Control your home in one Place',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                            'A smart home with advanced features that you can control from a mobile application',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400)),
                        SizedBox(height: 30),
                        BottomButtonWidget(
                          title: 'Get started',
                        ),
                        SizedBox(height: 25)
                      ]))
            ]));
  }
}
