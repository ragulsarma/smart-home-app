import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_ui/utils/app_colors.dart';

class BottomButtonWidget extends StatefulWidget {
  const BottomButtonWidget(
      {Key? key, required this.title, this.showSubTitle = false})
      : super(key: key);

  final String title;
  final bool showSubTitle;

  @override
  State<BottomButtonWidget> createState() => _BottomButtonWidgetState();
}

class _BottomButtonWidgetState extends State<BottomButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 70,
        decoration: const BoxDecoration(
            // border: Border.all(color: Colors.white),
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(35))),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(width: 5),
              Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(color: AppColors.primaryWhiteColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                    ),
                    if (widget.showSubTitle) ...[
                      const SizedBox(width: 3),
                      const Text(
                        '60mg/110mg',
                        style: TextStyle(color: Colors.grey),
                      )
                    ]
                  ]),
              // Spacer(),
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: AppColors.primaryButtonColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_forward_rounded,
                  color: AppColors.primaryColor,
                  size: 25,
                ),
              ),
            ]));
  }
}
