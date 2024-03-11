import 'package:flutter/material.dart';
import 'package:smart_home_ui/utils/app_colors.dart';
import 'package:smart_home_ui/widgets/pet_page_widgets/bottom_button_widget.dart';
import 'package:smart_home_ui/widgets/pet_page_widgets/pet_cam_view_widget.dart';

class PetHomePage extends StatefulWidget {
  const PetHomePage({super.key});

  @override
  State<PetHomePage> createState() => _PetHomePageState();
}

class _PetHomePageState extends State<PetHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryWhiteColor,
        appBar: AppBar(
            leadingWidth: 70,
            backgroundColor: AppColors.primaryWhiteColor,
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(13))),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.primaryColor,
                      size: 20,
                    )),
              ),
            ),
            title: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  Container(
                    width: 15,
                    height: 15,
                    margin: const EdgeInsets.only(right: 15),
                    decoration: const BoxDecoration(
                        color: Colors.lightGreenAccent, shape: BoxShape.circle),
                  ),
                  const Text('Your pets are fine',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400))
                ])),
            actions: [
              Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(13))),
                      child: const Icon(Icons.settings,
                          color: AppColors.primaryColor, size: 20))),
              const SizedBox(width: 16)
            ]),
        body: const Column(
          children: [PetCamViewWidget(), BottomButtonWidget()],
        ));
  }
}
