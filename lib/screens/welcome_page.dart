import 'package:flutter/material.dart';
import 'package:smart_home_ui/utils/app_colors.dart';
import 'package:smart_home_ui/widgets/pet_page_widgets/bottom_button_widget.dart';

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
        body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
              // height: 250,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                    BottomButtonWidget(title: 'Get started',
                    ),
                    SizedBox(height: 25)
                  ]))
        ]));
  }
}
