import 'package:flutter/material.dart';
import 'package:smart_home_ui/utils/app_colors.dart';

class BottomButtonWidget extends StatefulWidget {
  const BottomButtonWidget({Key? key}) : super(key: key);

  @override
  State<BottomButtonWidget> createState() => _BottomButtonWidgetState();
}

class _BottomButtonWidgetState extends State<BottomButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 80,
      decoration: const BoxDecoration(
          // border: Border.all(color: Colors.white),
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(35))),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(35))),
            child: const Icon(
              Icons.arrow_circle_right_sharp,
              color: Colors.red,
            ),
          ),
          const SizedBox(width: 5),
          const Text(
            'Update Pet Footer',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(width: 3),
          const Text(
            '60mg/110mg',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
