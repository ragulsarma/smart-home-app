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
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              // height: 50,
              // width: 50,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.all(Radius.circular(35))
              ),
              child: const Icon(
                Icons.arrow_circle_right_sharp,
                color: Colors.red,
                size: 60,
              ),
            ),
          ),
          const SizedBox(width: 5),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              widget.title,
              style: const TextStyle(color: Colors.white),
            ),
            if (widget.showSubTitle) ...[
              const SizedBox(width: 3),
              const Text(
                '60mg/110mg',
                style: TextStyle(color: Colors.grey),
              )
            ]
          ])
        ]));
  }
}
