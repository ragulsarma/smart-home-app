import 'package:flutter/material.dart';

class PetCamViewWidget extends StatefulWidget {
  const PetCamViewWidget({super.key});

  @override
  State<PetCamViewWidget> createState() => _PetCamViewWidgetState();
}

class _PetCamViewWidgetState extends State<PetCamViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/images/cat_image.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Container(),
    );
  }
}
