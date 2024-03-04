import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_ui/models/quick_access_model.dart';
import 'package:smart_home_ui/screens/pet_home_page.dart';
import 'package:smart_home_ui/utils/app_colors.dart';

class QuickAccessWidget extends StatefulWidget {
  const QuickAccessWidget({super.key});

  @override
  State<QuickAccessWidget> createState() => _QuickAccessWidgetState();
}

class _QuickAccessWidgetState extends State<QuickAccessWidget> {
  final List<QuickAccessModel> accessList = [
    QuickAccessModel(
      name: 'Pet Controller',
      dec: '4h 27m',
      enableGradient: true,
      enableButton: true,
      bgColor: AppColors.primaryBlueColor,
    ),
    QuickAccessModel(
      name: 'Door Locker',
      dec: 'Unlocked',
      enableGradient: false,
      enableButton: false,
      bgColor: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Quick Access',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 150,
          child: ListView.builder(
              itemCount: accessList.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PetHomePage()));
                  },
                  child: Container(
                    // height: 100,
                    // width: 150,
                    padding: const EdgeInsets.only(left: 16.0, right: 40),
                    margin: const EdgeInsets.only(left: 16.0),
                    decoration: BoxDecoration(
                        color: accessList[index].bgColor,
                        gradient: index == 0
                            ? const LinearGradient(
                                colors: [
                                  Color(0xFF3c70d8),
                                  Color(0xFF6393f4),
                                ],
                                begin: FractionalOffset(0.0, 0.0),
                                end: FractionalOffset(1.0, 0.0),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp)
                            : null,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 15),
                        Transform.scale(
                          scale: .9,
                          child: CupertinoSwitch(
                              value: accessList[index].enableButton,
                              activeColor: const Color(0XFF7197e3),
                              thumbColor:
                                  index == 1 ? AppColors.primaryColor : null,
                              onChanged: (value) {}),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          accessList[index].dec,
                          style: TextStyle(
                              color: index == 0
                                  ? Colors.white.withOpacity(0.3)
                                  : Colors.black.withOpacity(0.3)),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          accessList[index].name,
                          style: TextStyle(
                              color: index == 0
                                  ? Colors.white
                                  : AppColors.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
